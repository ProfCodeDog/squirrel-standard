import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';

import {AppComponent} from './app.component';
import {HeaderComponent} from './components/header/header.component';
import {NewsComponent} from './components/news/news.component';
import {FormsModule} from '@angular/forms';
import {HomeComponent} from './components/home/home.component';
import {TodolistComponent} from './components/todolist/todolist.component';
import {StorageService} from './servies/storage.service';
import {HttpModule, JsonpModule} from '@angular/http';
import { HerosComponent } from './components/heros/heros.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    NewsComponent,
    HomeComponent,
    TodolistComponent,
    HerosComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    JsonpModule
  ],
  providers: [StorageService],
  bootstrap: [AppComponent]
})
export class AppModule {
}
