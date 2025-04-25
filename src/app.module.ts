import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { join } from 'path';
import { GameModule } from './game/game.module';
import { PrismaModule } from './prisma/prisma.module';
import { SkillModule } from './skill/skill.module';

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: join(process.cwd(), 'schema.gql'),
      formatError: (error) => {
        return {
          message: error.message,
          extensions: {
            code: error.extensions?.code || 'INTERNAL_SERVER_ERROR',
          },
        };
      },
    }),
    PrismaModule,
    GameModule,
    SkillModule,
  ],
  controllers: [],
  providers: []
})
export class AppModule { }
