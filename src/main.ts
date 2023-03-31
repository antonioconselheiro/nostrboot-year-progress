import { NostrBoot } from './nostr-boot';
import * as schedule from 'node-schedule';
import { YearPercentService } from './year-percent.service';

// o nostr-tools usa o objeto global WebSocket, que não existe no nodejs
Object.assign(global, { WebSocket: require('ws') });

const nostrBoot = new NostrBoot();
schedule.scheduleJob('40 16 * * 5', () => {
  nostrBoot.publish(YearPercentService.getInstance().progressBar());
});

