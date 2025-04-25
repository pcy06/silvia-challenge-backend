import { Args, Info, Query, Resolver } from '@nestjs/graphql';
import { GraphQLResolveInfo } from 'graphql';
import { parseNestedQuery } from 'src/common/utils/nestedQueryParser';
import { GameService } from './game.service';
import { Prisma } from 'generated/prisma';
import { Game } from './game.entity';

@Resolver(() => Game)
export class GameResolver {
  constructor(private readonly gameService: GameService) {}
  
  @Query(() => [Game])
  async games(@Info() info: GraphQLResolveInfo): Promise<Game[]> {
    const select = parseNestedQuery<Prisma.GameSelect>(info);
    const games = await this.gameService.getGames(select);
    return games;
  }

  @Query(() => Game)
  async game(@Info() info: GraphQLResolveInfo, @Args('id') id: string): Promise<Game> {
    const select = parseNestedQuery<Prisma.GameSelect>(info);
    const game = await this.gameService.getGame(id, select);
    return game;
  }
}
