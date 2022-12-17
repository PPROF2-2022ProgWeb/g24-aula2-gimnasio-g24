
import { Pipe, PipeTransform } from '@angular/core';
import { MenuservService } from '../Layout/menu/menuserv.service';


@Pipe({
  name: 'userpipe'
})
export class UserpipePipe implements PipeTransform {
  loginservice: any;
  usuario: any;

  transform(value: any, arg: any): any {

    if (arg === 0) return value;
    const resultPosts = [];
    for (const usuario of value) {
      if (usuario.usercompra.toLowerCase().indexOf(arg.toLowerCase()) > -1) {
        resultPosts.push(usuario);
      };
    };
    return resultPosts;

  }

}
