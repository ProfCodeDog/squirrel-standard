import {Component, OnInit} from '@angular/core';
import {StorageService} from '../../servies/storage.service';

@Component({
  selector: 'app-todolist',
  templateUrl: './todolist.component.html',
  styleUrls: ['./todolist.component.css']
})
export class TodolistComponent implements OnInit {

  public userName: any = '';
  public userNames: any[] = [];

  constructor(private storage: StorageService) {
  }

  ngOnInit() {
    const todoList = this.storage.getItem('todoList');
    if (todoList) {
      this.userNames = this.storage.getItem('todoList');
    }
  }

  addData() {
    const obj = {
      userName: this.userName,
      status: 1
    };
    this.userNames.push(obj);

    let todoList = this.storage.getItem('todoList');
    if (todoList) {
      todoList.push(obj);
      this.storage.setItem('todoList', todoList);
    } else {
      todoList = [];
      todoList.push(obj);
      this.storage.setItem('todoList', todoList);
    }
  }

  addDataEnter(event) {
    if (event.keyCode === 13) {
      const obj = {
        userName: this.userName,
        status: 1
      };
      this.userNames.push(obj);

      let todoList = this.storage.getItem('todoList');
      if (todoList) {
        todoList.push(obj);
        this.storage.setItem('todoList', todoList);
      } else {
        todoList = [];
        todoList.push(obj);
        this.storage.setItem('todoList', todoList);
      }
    }
  }

  delData(key) {
    this.userNames.splice(key, 1);
    this.storage.removeItem(key);
  }

  changeStatus(key) {

    if (1 === this.userNames[key].status) {
      this.userNames[key].status = 2;
    } else {
      this.userNames[key].status = 1;
    }
    this.storage.setItem('todoList', this.userNames);
  }
}
