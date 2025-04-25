import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { Prisma } from 'generated/prisma';
import { NotFoundError } from '../common/exceptions/graphql.exceptions';

@Injectable()
export class GameService {
  constructor(private prisma: PrismaService) { }

  async getGames(select: Prisma.GameSelect) {
    return await this.prisma.game.findMany({
      select
    });
  }

  async getGame(id: string, select: Prisma.GameSelect) {
    const game = await this.prisma.game.findUnique({
      where: { id },
      select,
    });
    if (!game) {
      throw new NotFoundError('GAME_NOT_FOUND');
    }
    return game;
  }
}
