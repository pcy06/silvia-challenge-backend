import { Field, ID, Int, ObjectType, registerEnumType } from '@nestjs/graphql';
import { Skill } from '../skill/skill.entity';
import { GameIntensity, GamePaywall, GameStatus } from 'generated/prisma';

registerEnumType(GameStatus, {
  name: 'GameStatus',
  description: '게임 상태',
});

registerEnumType(GamePaywall, {
  name: 'GamePaywall',
  description: '결제 제한'
})

registerEnumType(GameIntensity, {
  name: 'GameIntensity',
  description: '게임 난이도'
})

@ObjectType()
export class Game {
  @Field(() => ID)
  id: string;

  @Field()
  gameId: string;

  @Field()
  name: string;

  @Field()
  description: string;

  @Field()
  iconUrl: string;

  @Field()
  coverUrl: string;

  @Field(() => Int)
  playDuration: number;

  @Field(() => Skill)
  relatedSkill: Skill;

  @Field(() => GameIntensity)
  intensity: GameIntensity;

  @Field(() => GamePaywall)
  paywall: GamePaywall;

  @Field(() => GameStatus)
  status: GameStatus;

  @Field()
  createdAt: Date;

  @Field(() => Date, { nullable: true })
  updatedAt?: Date;
} 