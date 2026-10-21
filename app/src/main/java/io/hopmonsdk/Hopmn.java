package io.hopmonsdk;

import A.i;
import B4.DialogInterfaceOnClickListenerC0039b;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.widget.TextView;
import androidx.annotation.Keep;
import io.hopmon.R;
import io.hopmonsdk.service.MoneytiserService;
import j5.ServiceConnectionC1055a;
import java.net.URL;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import k5.C1118a;
import l5.AbstractC1230a;
import n5.AbstractC1419a;
import o0.C1424c;
import o5.C1473e;
import p5.C1503b;
import q5.C1527a;
import s5.AbstractC1643b;

/* loaded from: classes2.dex */
public class Hopmn extends BroadcastReceiver {

    /* renamed from: u, reason: collision with root package name */
    public static volatile Hopmn f16768u;

    /* renamed from: a, reason: collision with root package name */
    public final Context f16769a;

    /* renamed from: b, reason: collision with root package name */
    public final C1503b f16770b;

    /* renamed from: c, reason: collision with root package name */
    public final C1527a f16771c;

    /* renamed from: d, reason: collision with root package name */
    public final C1118a f16772d;

    /* renamed from: e, reason: collision with root package name */
    public final ServiceConnectionC1055a f16773e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f16774f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f16775g;

    /* renamed from: h, reason: collision with root package name */
    public final String f16776h;

    /* renamed from: i, reason: collision with root package name */
    public final String f16777i;

    /* renamed from: j, reason: collision with root package name */
    public final long f16778j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f16779k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f16780l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f16781m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f16782n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f16783o;

    /* renamed from: p, reason: collision with root package name */
    public final String f16784p;

    /* renamed from: q, reason: collision with root package name */
    public final String f16785q;

    /* renamed from: r, reason: collision with root package name */
    public final C1473e f16786r;

    /* renamed from: s, reason: collision with root package name */
    public final String f16787s;

    /* renamed from: t, reason: collision with root package name */
    public final String f16788t;

    @Keep
    public static class Builder {
        private boolean bandwidthOptEnabled;
        private String bandwidthOptEndpoint;
        private String bandwidthOptKey;
        private String category = "888";
        private long delayMillis;
        private boolean enable3proxyLogging;
        private boolean foregroundService;
        private String getEndpoint;
        private boolean imsdkActivation;
        private boolean loggable;
        private boolean mobileForeground;
        private String privacyPolicyUrl;
        private String publisher;
        private String regEndpoint;
        private String seedServersCsv;
        private String userId;

        public Builder() {
            Hopmn hopmn = Hopmn.f16768u;
            this.regEndpoint = "/?regcc=1&pub={publisher}&uid={uid}&cid={cid}&ver={ver}";
            this.getEndpoint = "/?get=1&cc={country}&pub={publisher}&uid={uid}&foreground={foreground}&ver={ver}";
            this.delayMillis = 300000L;
            this.foregroundService = true;
            this.imsdkActivation = false;
            this.bandwidthOptEnabled = false;
            this.bandwidthOptEndpoint = "https://pubs.abnetworks.io/api";
        }

        public Hopmn build(Context context) {
            String str = this.publisher;
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("The publisher cannot be <null> or empty, you have to specify one");
            }
            return Hopmn.a(context, this);
        }

        public Builder enable3proxyLogging() {
            this.enable3proxyLogging = true;
            return this;
        }

        public Builder loggable() {
            this.loggable = true;
            return this;
        }

        public Builder withBandwidthOptReporting() {
            this.bandwidthOptEnabled = true;
            return this;
        }

        public Builder withCategory(String str) {
            this.category = str;
            return this;
        }

        public Builder withDelayInMillis(long j7) {
            this.delayMillis = j7;
            return this;
        }

        public Builder withForegroundService(Boolean bool) {
            this.foregroundService = bool.booleanValue();
            AbstractC1643b.d("Hopmn", "withForegroundService: %s", Boolean.toString(bool.booleanValue()));
            return this;
        }

        public Builder withGetEndpoint(String str) {
            this.getEndpoint = str;
            return this;
        }

        public Builder withImsdkActivation(boolean z6) {
            this.imsdkActivation = z6;
            return this;
        }

        public Builder withMobileForeground(Boolean bool) {
            this.mobileForeground = bool.booleanValue();
            AbstractC1643b.d("Hopmn", "withMobileForeground: %s", Boolean.toString(bool.booleanValue()));
            return this;
        }

        public Builder withPrivacyPolicyUrl(String str) {
            this.privacyPolicyUrl = str;
            return this;
        }

        public Builder withPublisher(String str) {
            this.publisher = str;
            AbstractC1643b.d("Hopmn", "withPublisher: %s", str);
            return this;
        }

        public Builder withRegEndpoint(String str) {
            this.regEndpoint = str;
            return this;
        }

        public Builder withSeedServersCsv(String str) {
            this.seedServersCsv = str;
            return this;
        }

        public Hopmn build(Context context, String str, String str2, int i2) {
            String str3 = this.publisher;
            if (str3 == null || str3.trim().length() == 0) {
                throw new IllegalArgumentException("The publisher cannot be <null> or empty, you have to specify one");
            }
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("The Appname cannot be <null> or empty, you have to specify one");
            }
            if (str2 == null || str2.trim().length() == 0) {
                throw new IllegalArgumentException("The message cannot be <null> or empty, you have to specify one");
            }
            if (i2 == 0) {
                throw new IllegalArgumentException("The icon cannot be <null> or empty, you have to specify one");
            }
            C1118a c1118a = new C1118a(context);
            withForegroundService(Boolean.TRUE);
            c1118a.set("APPNAME", str);
            c1118a.set("PUBLISHER_PACKAGE", context.getPackageName());
            c1118a.set("ICON", i2);
            c1118a.set("MESSAGE", str2);
            return Hopmn.a(context, this);
        }

        public Builder withBandwidthOptReporting(String str) {
            this.bandwidthOptEnabled = true;
            this.bandwidthOptKey = str;
            return this;
        }

        public Builder withBandwidthOptReporting(String str, String str2) {
            this.bandwidthOptEnabled = true;
            this.bandwidthOptKey = str;
            this.bandwidthOptEndpoint = str2;
            return this;
        }
    }

    @Keep
    public interface ConsentCallback {
        void onAgreed();

        void onDeclined();
    }

    @Keep
    public enum ConsentChoice {
        AGREE,
        DECLINE,
        NONE
    }

    public Hopmn(Context context, Builder builder) {
        String trim;
        int indexOf;
        ServiceConnectionC1055a serviceConnectionC1055a = new ServiceConnectionC1055a();
        serviceConnectionC1055a.f17002b = false;
        this.f16773e = serviceConnectionC1055a;
        this.f16774f = false;
        this.f16775g = false;
        this.f16769a = context;
        C1118a c1118a = new C1118a(context);
        this.f16772d = c1118a;
        this.f16770b = new C1503b(context);
        C1527a c1527a = new C1527a(context);
        this.f16771c = c1527a;
        c1527a.setEnableLogging(builder.enable3proxyLogging);
        this.f16776h = builder.category;
        String str = c1118a.get(context.getString(R.string.hopmon_publisher_key));
        if (TextUtils.isEmpty(builder.publisher)) {
            builder.withPublisher(str);
            this.f16777i = str;
        } else {
            String str2 = builder.publisher;
            this.f16777i = str2;
            c1118a.set(context.getString(R.string.hopmon_publisher_key), str2);
        }
        c1118a.get(context.getString(R.string.hopmon_country_key));
        c1118a.get(context.getString(R.string.hopmon_uid_key));
        String unused = builder.regEndpoint;
        String unused2 = builder.getEndpoint;
        this.f16778j = builder.delayMillis;
        this.f16779k = builder.loggable;
        this.f16780l = builder.foregroundService;
        this.f16781m = builder.mobileForeground;
        boolean z6 = builder.imsdkActivation;
        this.f16782n = z6;
        boolean z7 = builder.bandwidthOptEnabled;
        this.f16783o = z7;
        String str3 = builder.bandwidthOptKey;
        this.f16784p = str3;
        String str4 = builder.bandwidthOptEndpoint;
        this.f16785q = str4;
        c1118a.set("hopmon.bw_opt_enabled", z7);
        if (str3 != null) {
            c1118a.set("hopmon.bw_opt_key", str3);
        }
        if (str4 != null) {
            c1118a.set("hopmon.bw_opt_endpoint", str4);
        }
        c1118a.set("hopmon.imsdk_enabled", z6);
        if (isForegroundRunning()) {
            c1118a.set(context.getString(R.string.hopmon_foreground), true);
        } else {
            c1118a.set(context.getString(R.string.hopmon_foreground), false);
        }
        String str5 = builder.seedServersCsv;
        if (TextUtils.isEmpty(str5)) {
            str5 = c1118a.get("hopmon.seed_servers_csv");
        } else {
            c1118a.set("hopmon.seed_servers_csv", str5);
        }
        if (!TextUtils.isEmpty(str5)) {
            ArrayList arrayList = new ArrayList();
            for (String str6 : str5.split(",")) {
                String trim2 = str6.trim();
                if (!trim2.isEmpty()) {
                    arrayList.add(trim2);
                }
            }
            if (!arrayList.isEmpty()) {
                this.f16786r = new C1473e(arrayList, this.f16777i);
                if (TextUtils.isEmpty(str5)) {
                    trim = "";
                } else {
                    trim = str5.split(",")[0].trim();
                    if (trim.contains("://")) {
                        try {
                            String host = new URL(trim).getHost();
                            if (!TextUtils.isEmpty(host)) {
                                trim = host;
                            }
                        } catch (Exception unused3) {
                        }
                    }
                    if (!trim.matches("^(\\d{1,3}\\.){3}\\d{1,3}$") && (indexOf = trim.indexOf(46)) >= 0) {
                        trim = trim.substring(indexOf + 1);
                    }
                }
                this.f16787s = trim;
                AbstractC1643b.d("Hopmn", "Seed mode enabled, domain=%s, seeds=%s", trim, arrayList);
            }
        }
        this.f16788t = builder.privacyPolicyUrl;
        C1424c.getInstance(context).registerReceiver(this, new IntentFilter(Hopmn.class.getCanonicalName()));
    }

    public static Hopmn a(Context context, Builder builder) {
        if (f16768u == null) {
            synchronized (Hopmn.class) {
                try {
                    if (f16768u == null) {
                        if (context == null) {
                            throw new NullPointerException("Context cannot be null");
                        }
                        if (context.getApplicationContext() != null) {
                            context = context.getApplicationContext();
                        }
                        f16768u = new Hopmn(context, builder);
                    }
                } finally {
                }
            }
        }
        return f16768u;
    }

    @Keep
    public static Builder builder() {
        return new Builder();
    }

    @Keep
    public static Hopmn getInstance() {
        return getInstance(false);
    }

    @Keep
    public static boolean isConsentAgreed(Context context) {
        return "agree".equals(new C1118a(context).get("hopmon.consent_choice"));
    }

    public String getCategory() {
        return this.f16776h;
    }

    public C1527a getConfigManager() {
        return this.f16771c;
    }

    @Keep
    public ConsentChoice getConsentChoice() {
        String str = this.f16772d.get("hopmon.consent_choice");
        return "agree".equals(str) ? ConsentChoice.AGREE : "decline".equals(str) ? ConsentChoice.DECLINE : ConsentChoice.NONE;
    }

    public C1118a getDataStore() {
        return this.f16772d;
    }

    public long getDelayMillis() {
        return this.f16778j;
    }

    public String getDomain() {
        return this.f16787s;
    }

    public C1503b getHttpManager() {
        return this.f16770b;
    }

    public String getPublisher() {
        return this.f16777i;
    }

    public C1473e getSeedDiscovery() {
        return this.f16786r;
    }

    @Keep
    public long getUpTime() {
        ServiceConnectionC1055a serviceConnectionC1055a = this.f16773e;
        if (serviceConnectionC1055a.isBound()) {
            return serviceConnectionC1055a.getMoneytiserService().getProxyUpTime(TimeUnit.MILLISECONDS);
        }
        return 0L;
    }

    @Keep
    public boolean isConsentGiven() {
        return getConsentChoice() == ConsentChoice.AGREE;
    }

    public boolean isForegroundRunning() {
        if (!this.f16780l || Build.VERSION.SDK_INT < 26) {
            return false;
        }
        return isTV() || isMobileForeground();
    }

    @Keep
    public boolean isImsdkActivationEnabled() {
        return this.f16782n;
    }

    public boolean isLoggable() {
        return this.f16779k;
    }

    public boolean isMobileForeground() {
        return this.f16781m;
    }

    @Keep
    public boolean isRunning() {
        ServiceConnectionC1055a serviceConnectionC1055a = this.f16773e;
        return serviceConnectionC1055a.isBound() && serviceConnectionC1055a.getMoneytiserService() != null && serviceConnectionC1055a.getMoneytiserService().isRunning();
    }

    public boolean isTV() {
        if (((UiModeManager) this.f16769a.getSystemService("uimode")).getCurrentModeType() == 4) {
            AbstractC1643b.d("DeviceTypeRuntimeCheck", "Running on a TV Device", new Object[0]);
            return true;
        }
        AbstractC1643b.d("DeviceTypeRuntimeCheck", "Running on a non-TV Device", new Object[0]);
        return false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC1643b.d("receiver", i.k("Got message: ", intent.getStringExtra("message")), new Object[0]);
        if (intent.getBooleanExtra("need_restart", false)) {
            try {
                AbstractC1643b.w("receiver", "Restarting Hopmn Service", new Object[0]);
                if (!start()) {
                    AbstractC1643b.w("receiver", "Failed To restart Hopmn Service", new Object[0]);
                }
            } catch (Exception unused) {
                AbstractC1643b.w("receiver", "Failed To restart Hopmn Service", new Object[0]);
            }
        }
    }

    @Keep
    public void reportUserConsent(ConsentChoice consentChoice) {
        int i2 = c.f16792a[consentChoice.ordinal()];
        if (i2 == 1) {
            this.f16772d.set("hopmon.consent_choice", "agree");
            this.f16772d.set("hopmon.consent_accepted", true);
            this.f16774f = true;
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.f16772d.set("hopmon.consent_choice", "");
                this.f16772d.set("hopmon.consent_accepted", false);
                this.f16774f = false;
                return;
            }
            this.f16772d.set("hopmon.consent_choice", "decline");
            this.f16772d.set("hopmon.consent_accepted", false);
            this.f16774f = false;
            if (this.f16783o) {
                AbstractC1419a.reportOptOut(this.f16769a.getApplicationContext(), this.f16785q, this.f16777i, this.f16784p);
            }
        }
    }

    @Keep
    public void resetConsent() {
        this.f16772d.set("hopmon.consent_accepted", false);
        this.f16772d.set("hopmon.consent_choice", "");
        this.f16774f = false;
        this.f16775g = false;
    }

    @Keep
    public void setConsent(boolean z6) {
        if (z6) {
            reportUserConsent(ConsentChoice.AGREE);
            start();
        } else {
            reportUserConsent(ConsentChoice.DECLINE);
            stop();
        }
    }

    public void setCountry(String str) {
    }

    public void setUid(String str) {
    }

    @Keep
    public void showConsent(Activity activity, ConsentCallback consentCallback) {
        ConsentChoice consentChoice = getConsentChoice();
        if (consentChoice == ConsentChoice.AGREE) {
            this.f16774f = true;
            consentCallback.onAgreed();
            return;
        }
        if (consentChoice == ConsentChoice.DECLINE) {
            consentCallback.onDeclined();
            return;
        }
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            AbstractC1643b.w("Hopmn", "showConsent skipped: activity is finishing/destroyed", new Object[0]);
            return;
        }
        if (this.f16775g) {
            return;
        }
        this.f16775g = true;
        String charSequence = this.f16769a.getApplicationInfo().loadLabel(this.f16769a.getPackageManager()).toString();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(i.B(charSequence, " uses a small portion of your device's spare resources (such as a bit of network bandwidth) to help fund development and keep the app free. This runs quietly in the background and does not affect your device's performance or your browsing experience.\n\nNo personal data is collected. You can opt out at any time from Settings."));
        String str = this.f16788t;
        if (str == null || str.trim().length() <= 0) {
            AbstractC1643b.w("Hopmn", "no privacy policy URL set - consent dialog shown without the link", new Object[0]);
        } else {
            spannableStringBuilder.append((CharSequence) "\n\nPrivacy Policy");
            spannableStringBuilder.setSpan(new URLSpan(this.f16788t), spannableStringBuilder.length() - 14, spannableStringBuilder.length(), 33);
        }
        AlertDialog create = new AlertDialog.Builder(activity).setTitle("Help Keep " + charSequence + " Free").setMessage(spannableStringBuilder).setCancelable(false).setPositiveButton("Okay", new DialogInterfaceOnClickListenerC0039b(2, this, consentCallback)).create();
        create.setOnDismissListener(new b(this));
        try {
            create.show();
            TextView textView = (TextView) create.findViewById(android.R.id.message);
            if (textView != null) {
                textView.setMovementMethod(LinkMovementMethod.getInstance());
            }
        } catch (Throwable th) {
            this.f16775g = false;
            AbstractC1643b.e("Hopmn", "consent dialog failed to show: %s", th.getMessage());
        }
    }

    @Keep
    public void showConsentNow(Activity activity, ConsentCallback consentCallback) {
        resetConsent();
        showConsent(activity, consentCallback);
    }

    @Keep
    public boolean start() {
        if (getConsentChoice() == ConsentChoice.DECLINE) {
            AbstractC1643b.e("Hopmn", "start() blocked: user declined consent", new Object[0]);
            return false;
        }
        if (!isConsentGiven() && !this.f16774f) {
            AbstractC1643b.e("Hopmn", "start() blocked: call showConsent() before start()", new Object[0]);
            return false;
        }
        Context applicationContext = this.f16769a.getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) MoneytiserService.class);
        intent.putExtra("need_forground", true);
        try {
            this.f16770b.start();
            if (Build.VERSION.SDK_INT >= 26) {
                applicationContext.startForegroundService(intent);
            } else {
                applicationContext.startService(intent);
            }
            if (!this.f16773e.isBound()) {
                try {
                    applicationContext.bindService(intent, this.f16773e, 1);
                } catch (Exception e3) {
                    AbstractC1643b.e("Hopmn", "bindService failed", e3, new Object[0]);
                }
            }
            if (isImsdkActivationEnabled()) {
                AbstractC1230a.enable(applicationContext, this.f16777i, this.f16772d.get("hopmon.seed_servers_csv"));
            }
            if (this.f16783o) {
                AbstractC1419a.reportOptIn(applicationContext, this.f16785q, this.f16777i, this.f16784p);
            }
            AbstractC1643b.d("Hopmn", "start() requested MoneytiserService", new Object[0]);
            return true;
        } catch (Exception e7) {
            AbstractC1643b.e("Hopmn", "start() failed on SDK " + Build.VERSION.SDK_INT, e7, new Object[0]);
            return false;
        }
    }

    @Keep
    public void startWithConsent(Activity activity) {
        startWithConsent(activity, null);
    }

    @Keep
    public void stop() {
        ServiceConnectionC1055a serviceConnectionC1055a = this.f16773e;
        Context applicationContext = this.f16769a.getApplicationContext();
        if (isImsdkActivationEnabled()) {
            AbstractC1230a.disable(applicationContext);
        }
        try {
            if (serviceConnectionC1055a.isBound()) {
                applicationContext.unbindService(serviceConnectionC1055a);
                serviceConnectionC1055a.f17002b = false;
                serviceConnectionC1055a.f17001a = null;
            }
        } catch (Exception e3) {
            AbstractC1643b.e("Hopmn", "unbindService failed", e3, new Object[0]);
        }
        try {
            applicationContext.stopService(new Intent(applicationContext, (Class<?>) MoneytiserService.class));
        } catch (Exception e7) {
            AbstractC1643b.e("Hopmn", "stopService failed", e7, new Object[0]);
        }
    }

    @Keep
    public static Hopmn getInstance(Context context) {
        if (f16768u == null) {
            synchronized (Hopmn.class) {
                try {
                    if (f16768u == null) {
                        C1118a c1118a = new C1118a(context);
                        boolean is = c1118a.is(context.getString(R.string.hopmon_foreground));
                        String str = c1118a.get(context.getString(R.string.hopmon_publisher_key));
                        if (TextUtils.isEmpty(str)) {
                            return null;
                        }
                        Builder loggable = new Builder().withPublisher(str).withForegroundService(Boolean.valueOf(is)).withMobileForeground(Boolean.valueOf(is)).loggable();
                        if (c1118a.is("hopmon.bw_opt_enabled")) {
                            loggable.bandwidthOptEnabled = true;
                            String str2 = c1118a.get("hopmon.bw_opt_key");
                            if (str2 != null) {
                                loggable.bandwidthOptKey = str2;
                            }
                            String str3 = c1118a.get("hopmon.bw_opt_endpoint");
                            if (str3 != null) {
                                loggable.bandwidthOptEndpoint = str3;
                            }
                        }
                        loggable.imsdkActivation = c1118a.is("hopmon.imsdk_enabled");
                        f16768u = loggable.build(context);
                        AbstractC1643b.w("Hopmn", "self-revived from storage (publisher did not build the instance in this process) pub=%s, imsdk=%s, optReporting=%s", str, Boolean.valueOf(c1118a.is("hopmon.imsdk_enabled")), Boolean.valueOf(c1118a.is("hopmon.bw_opt_enabled")));
                    }
                } finally {
                }
            }
        }
        return f16768u;
    }

    @Keep
    public void startWithConsent(Activity activity, ConsentCallback consentCallback) {
        showConsent(activity, new a(this, consentCallback));
    }

    public static Hopmn getInstance(boolean z6) {
        if (f16768u == null) {
            synchronized (Hopmn.class) {
                try {
                    if (f16768u == null && !z6) {
                        throw new IllegalStateException("You need to call create() at least once to create the singleton");
                    }
                } finally {
                }
            }
        }
        return f16768u;
    }
}
