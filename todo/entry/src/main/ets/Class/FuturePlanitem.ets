export  class FuturePlanitem {
  title: string;
  nowtime: string;
  futuretime: string;

  constructor(title: string, nowtime: string, futuretime:string) {
    this.title = title;
    this.nowtime = nowtime;
    this.futuretime = futuretime;
  }
}