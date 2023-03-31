export class YearPercentService {

  static getInstance(): YearPercentService {
    if (!this.instance) {
      this.instance = new YearPercentService();
    }

    return this.instance;
  }

  private static instance: YearPercentService | null = null;
  private constructor() {}

  private percentageOfYearPassed(): number {
    const now = new Date();
    const startOfYear = new Date(now.getFullYear(), 0, 1);
    const endOfYear = new Date(now.getFullYear() + 1, 0, 1);
    const millisecondsInYear = endOfYear.getTime() - startOfYear.getTime();
    const millisecondsPassed = now.getTime() - startOfYear.getTime();
    const percentagePassed = (millisecondsPassed / millisecondsInYear);
    return percentagePassed;
  }
  
  progressBar(width: number = 20): string {
    const percentage = this.percentageOfYearPassed();
    const filledWidth = Math.round(percentage * width);
    const emptyWidth = Math.max(width - filledWidth, 0);
    const filled = '█'.repeat(filledWidth);
    const empty = '░'.repeat(emptyWidth);
    const bar = filled + empty;
    const humanReadablePercentage = Math.round(percentage * 100);
    return `${bar} ${humanReadablePercentage}%`;
  }
}