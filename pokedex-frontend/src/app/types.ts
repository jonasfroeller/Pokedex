export interface Pokemon {
  id: number;
  name: string;
  typePrimary: string;
  typeSecondary: string;
  catchCount: number;
  levelMin: number;
  levelMax: number;
  pictureUrl: string;
}
