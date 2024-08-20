import { Injectable } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';
import { PersonDto } from './dto/person.dto';

@Injectable()
export class PersonService {
    constructor(private prisma: PrismaService) {}

    async findAllPerson() {
      return this.prisma.person.findMany()
    }

    async createPerson(body: PersonDto) {
      return this.prisma.person.create({
        data: {
          first_name: body.first_name,
          last_name: body.last_name,
          created_id: null,
          modified_id: null,
          created_date: new Date(),
          modified_date: new Date()
        }
      })
    }
    
}
