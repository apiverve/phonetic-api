declare module '@apiverve/phonetic' {
  export interface phoneticOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface phoneticResponse {
    status: string;
    error: string | null;
    data: PhoneticEncoderData;
    code?: number;
  }


  interface PhoneticEncoderData {
      word:      string;
      soundex:   string;
      metaphone: string;
  }

  export default class phoneticWrapper {
    constructor(options: phoneticOptions);

    execute(callback: (error: any, data: phoneticResponse | null) => void): Promise<phoneticResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: phoneticResponse | null) => void): Promise<phoneticResponse>;
    execute(query?: Record<string, any>): Promise<phoneticResponse>;
  }
}
