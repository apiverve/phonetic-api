declare module '@apiverve/phonetic' {
  export interface phoneticOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface phoneticResponse {
    status: string;
    error: string | null;
    data: PhoneticEncoderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PhoneticEncoderData {
      word:      null | string;
      soundex:   null | string;
      metaphone: null | string;
  }

  export default class phoneticWrapper {
    constructor(options: phoneticOptions);

    execute(callback: (error: any, data: phoneticResponse | null) => void): Promise<phoneticResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: phoneticResponse | null) => void): Promise<phoneticResponse>;
    execute(query?: Record<string, any>): Promise<phoneticResponse>;
  }
}
