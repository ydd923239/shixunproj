/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Style config.
 */
export const STYLE_CONFIG: Record<string, number> = {
  'IMAGE_SIZE': 32,
  'IMAGE_MARGIN': 4,
  'ICON_GUTTER': 4,
  'OPERATION_BUTTON_PADDING': 4,
  'MENU_IMAGE_SIZE': 24,
  'MENU_HEIGHT': 56,
  'TEXT_MARGIN_LEFT': 40,
  'IMAGE_MARGIN_RIGHT': 30,
  'LIST_ITEM_GUTTER': 12,
  'BORDER_WIDTH': 3,
  'TODO_ITEM_HEIGHT': 80,
  'TODO_ITEM_PADDING_VERTICAL': 4,
  'IMAGE_ICON_OK_SIZE': 15,
  'ANIMATION_DURATION': 600,
  'CUSTOM_CHECKBOX_SIZE': 20
}

export class Constant {
  /**
   * Available things.
   */
  static readonly AVAILABLE_THINGS: string[] = ['读书', '运动', '旅游', '听音乐', '看电影', '唱歌'];

  /**
   * Percent 12.
   */
  static readonly PERCENT_12: string = '12%';

  /**
   * Percent 100
   */
  static readonly PERCENT_FULL: string = '100%';
}
