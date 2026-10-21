package e;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class W extends V {

    /* renamed from: c, reason: collision with root package name */
    public final s0 f13666c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a0 f13667d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(a0 a0Var, s0 s0Var) {
        super(a0Var);
        this.f13667d = a0Var;
        this.f13666c = s0Var;
    }

    @Override // e.V
    public final IntentFilter b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        return intentFilter;
    }

    @Override // e.V
    public int getApplyableNightMode() {
        Location location;
        boolean z6;
        long j7;
        Location location2;
        s0 s0Var = this.f13666c;
        r0 r0Var = (r0) s0Var.f13867c;
        if (r0Var.f13862b > System.currentTimeMillis()) {
            z6 = r0Var.f13861a;
        } else {
            Context context = (Context) s0Var.f13865a;
            int checkSelfPermission = A.n.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION");
            Location location3 = null;
            LocationManager locationManager = (LocationManager) s0Var.f13866b;
            if (checkSelfPermission == 0) {
                try {
                } catch (Exception e3) {
                    Log.d("TwilightManager", "Failed to get last known location", e3);
                }
                if (locationManager.isProviderEnabled("network")) {
                    location2 = locationManager.getLastKnownLocation("network");
                    location = location2;
                }
                location2 = null;
                location = location2;
            } else {
                location = null;
            }
            if (A.n.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                try {
                    if (locationManager.isProviderEnabled("gps")) {
                        location3 = locationManager.getLastKnownLocation("gps");
                    }
                } catch (Exception e7) {
                    Log.d("TwilightManager", "Failed to get last known location", e7);
                }
            }
            if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                location = location3;
            }
            if (location != null) {
                long currentTimeMillis = System.currentTimeMillis();
                if (q0.f13855d == null) {
                    q0.f13855d = new q0();
                }
                q0 q0Var = q0.f13855d;
                q0Var.calculateTwilight(currentTimeMillis - DateUtils.MILLIS_PER_DAY, location.getLatitude(), location.getLongitude());
                q0Var.calculateTwilight(currentTimeMillis, location.getLatitude(), location.getLongitude());
                z6 = q0Var.f13858c == 1;
                long j8 = q0Var.f13857b;
                long j9 = q0Var.f13856a;
                q0Var.calculateTwilight(DateUtils.MILLIS_PER_DAY + currentTimeMillis, location.getLatitude(), location.getLongitude());
                long j10 = q0Var.f13857b;
                if (j8 == -1 || j9 == -1) {
                    j7 = currentTimeMillis + 43200000;
                } else {
                    if (currentTimeMillis <= j9) {
                        j10 = currentTimeMillis > j8 ? j9 : j8;
                    }
                    j7 = j10 + 60000;
                }
                r0Var.f13861a = z6;
                r0Var.f13862b = j7;
            } else {
                Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                int i2 = Calendar.getInstance().get(11);
                if (i2 < 6 || i2 >= 22) {
                    z6 = true;
                }
            }
        }
        return z6 ? 2 : 1;
    }

    @Override // e.V
    public void onChange() {
        this.f13667d.applyDayNight();
    }
}
