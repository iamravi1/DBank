import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkBalence' : () => Promise<number>,
  'compound' : () => Promise<undefined>,
  'topUp' : (arg_0: number) => Promise<undefined>,
  'withDraw' : (arg_0: number) => Promise<undefined>,
}
