import { Injectable } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class PersonService {
    constructor(private prisma: PrismaService) {}
}
