# 빌드 스테이지
FROM node:20-alpine AS build

WORKDIR /app

# Corepack 활성화하여 Yarn 3.5.0 사용
RUN corepack enable
RUN corepack prepare yarn@3.5.0 --activate

# 패키지 매니저로 yarn을 사용
COPY .yarn/ ./.yarn/
COPY .yarnrc.yml ./
COPY package.json yarn.lock ./

# 종속성 설치
RUN yarn install

# 소스 코드 복사
COPY . .

# Prisma 클라이언트 생성 및 애플리케이션 빌드
RUN yarn prisma generate
RUN yarn build

# 프로덕션 스테이지
FROM node:20-alpine AS production

WORKDIR /app

# Corepack 활성화
RUN corepack enable
RUN corepack prepare yarn@3.5.0 --activate

# 빌드 스테이지에서 필요한 파일만 복사
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package.json ./
COPY --from=build /app/yarn.lock ./
COPY --from=build /app/.yarn ./.yarn
COPY --from=build /app/.yarnrc.yml ./
COPY --from=build /app/dist ./dist
COPY --from=build /app/generated ./generated
COPY --from=build /app/prisma ./prisma

# 프로덕션 모드로 설정
ENV NODE_ENV=production
ENV PORT=3000

# Prisma 마이그레이션 및 서버 실행을 위한 스크립트 복사
COPY --from=build /app/entrypoint.sh ./
RUN chmod +x ./entrypoint.sh

EXPOSE 3000

# 서버 실행
CMD ["./entrypoint.sh"]
