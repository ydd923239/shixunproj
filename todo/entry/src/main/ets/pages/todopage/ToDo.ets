import { util } from '@kit.ArkTS'

@Observed
export class ToDo {
  key: string = util.generateRandomUUID(true);
  name: string;
  isCompleted: boolean = false;
  constructor(name: string) {
    this.name = name;
  }
}