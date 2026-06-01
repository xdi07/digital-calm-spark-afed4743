import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'app.lovable.focusnest',
  appName: 'FocusNest',
  webDir: 'dist',
  server: {
    url: 'https://4e4221dc-c3a3-482c-ad95-7ca340871326.lovableproject.com?forceHideBadge=true',
    cleartext: true,
  },
};

export default config;
