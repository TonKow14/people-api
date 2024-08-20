import { Body, Controller, Get, Post } from '@nestjs/common';
import { PersonService } from './person.service';
import { PersonDto } from './dto/person.dto';

@Controller('person')
export class PersonController {
    constructor(private personService: PersonService) { }

    @Get('find-all')
    async findPersonAll() {
        return this.personService.findAllPerson()
    }

    @Post()
    async createPerson(@Body() body: PersonDto) {
        return this.personService.createPerson(body)
    }
}
