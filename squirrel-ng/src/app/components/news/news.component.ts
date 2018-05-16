import {Component, OnInit} from '@angular/core';
import {Http, Jsonp, Headers} from '@angular/http';

@Component({
  selector: 'app-news',
  templateUrl: './news.component.html',
  styleUrls: ['./news.component.css']
})
export class NewsComponent implements OnInit {

  public list: any[] = [];
  private headers = new Headers({'Content-Type': 'application/json'});

  constructor(private http: Http, private  jsonp: Jsonp) {
  }

  ngOnInit() {
  }

  requestData() {

    const _that = this;
    const url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';

    this.http.get(url).subscribe(function (data) {
      const list = JSON.parse(data['_body']);
      _that.list = list['result'];
    }, function (err) {
      console.log(err);
    });
  }


  requestJsonpData() {

    const _that = this;
    const url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1&callback=JSONP_CALLBACK';

    this.jsonp.get(url).subscribe(function (data) {
      _that.list = data['_body']['result'];
    }, function (err) {
      console.log(err);
    });
  }

  postData() {

    const url = 'http://127.0.0.1:3000/dologin';

    this.http.post(url,
      JSON.stringify({'username': 'zhangsan', 'age': '20'}),
      {headers: this.headers}).subscribe(function (data) {
      console.log(data);
    }, function (error) {
      console.log(error);
    });
  }
}
