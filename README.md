# Silvia Challenge Dashboard Backend

이 백엔드 애플리케이션은 NestJS와 GraphQL을 기반으로 하며, Silvia 앱의 '챙김 -> 두뇌훈련' 탭의 컨텐츠를 관리하기 위한 API를 제공합니다.

### 환경 변수 설정

`.env.example` 파일을 참고하여 `.env` 파일을 생성하고 필요한 환경 변수를 설정하세요.

### 프로젝트 설치 및 실행

```bash
# 저장소 복제
git clone https://github.com/pcy06/silvia-challenge-backend.git

# 프로젝트 디렉토리로 이동
cd silvia-challenge-backend

# 패키지 설치
yarn install

# Prisma 클라이언트 생성
yarn prisma generate

# 데이터베이스 마이그레이션 실행
yarn prisma migrate dev

# 개발 서버 실행
yarn start:dev
```

## 도커를 이용한 실행 (권장)

이 프로젝트는 Docker를 사용하여 간편하게 실행할 수 있습니다.

Docker를 활용한 설치 후에는 dummy.sql 파일을 Postgres의 silvia-challenge 데이터베이스, public 스키마에서 실행하여야 합니다.

```bash
# Docker 이미지 빌드 및 서비스 실행
docker compose build
docker compose up -d
```

## 프론트엔드 연동

이 백엔드는 [Silvia Challenge Dashboard Frontend](https://github.com/pcy06/silvia-challenge-frontend)와 함께 작동하도록 설계되었습니다. 프론트엔드 설정 및 실행에 대한 자세한 내용은 해당 저장소를 참조하세요.
