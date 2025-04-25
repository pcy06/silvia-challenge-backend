import { GraphQLError } from 'graphql';

export class NotFoundError extends GraphQLError {
  constructor(message: string) {
    super(message, {
      extensions: {
        code: 'NOT_FOUND',
      },
    });
    Object.defineProperty(this, 'name', { value: 'NotFoundError' });
  }
}

export class BadRequestError extends GraphQLError {
  constructor(message: string) {
    super(message, {
      extensions: {
        code: 'BAD_REQUEST',
      },
    });
    Object.defineProperty(this, 'name', { value: 'BadRequestError' });
  }
}

export class UnauthorizedError extends GraphQLError {
  constructor(message: string) {
    super(message, {
      extensions: {
        code: 'UNAUTHORIZED',
      },
    });
    Object.defineProperty(this, 'name', { value: 'UnauthorizedError' });
  }
}

export class ForbiddenError extends GraphQLError {
  constructor(message: string) {
    super(message, {
      extensions: {
        code: 'FORBIDDEN',
      },
    });
    Object.defineProperty(this, 'name', { value: 'ForbiddenError' });
  }
}

export class InternalServerError extends GraphQLError {
  constructor(message: string) {
    super(message, {
      extensions: {
        code: 'INTERNAL_SERVER_ERROR',
      },
    });
    Object.defineProperty(this, 'name', { value: 'InternalServerError' });
  }
}