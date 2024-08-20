import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as useragent from 'express-useragent';

async function bootstrap() {
  const app = await NestFactory.create(AppModule, { cors: true });

  app.use(useragent.express());

  app.setGlobalPrefix('api');
  await app.listen(3000);
}
bootstrap();
