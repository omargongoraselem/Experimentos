import { schemaDefinitions } from './cloud/schema.js';

export const config = {
  databaseURI:
    process.env.DATABASE_URI || process.env.MONGODB_URI || 'mongodb://localhost:27017/dev',
  cloud: () => import('./cloud/main.js'),
  appId: 'AppID_Test_Omar',
  masterKey: 'MasterKey_Test_Omar', //Add your master key here. Keep it secret!
  serverURL: 'http://localhost:1337/parse', // Don't forget to change to https if needed
  liveQuery: {
    classNames: ['Posts', 'Comments'], // List of classes to support for query subscriptions
  },
  schema: {
    definitions: schemaDefinitions,
    lockSchemas: true,
    strict: true,
    recreateModifiedFields: false,
    deleteExtraFields: false,
  },
};
