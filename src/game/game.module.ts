import { Module } from '@nestjs/common';
import { GameResolver } from './game.resolver';
import { GameService } from './game.service';

@Module({
  imports: [],
  controllers: [],
  providers: [GameResolver, GameService],
})
export class GameModule {}

