package p5;

import androidx.media3.common.C;
import io.hopmon.R;
import io.hopmonsdk.Hopmn;
import io.hopmonsdk.service.MoneytiserService;
import o5.InterfaceC1472d;
import s5.AbstractC1643b;

/* renamed from: p5.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1504c implements InterfaceC1472d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f19505a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Hopmn f19506b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19507c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MoneytiserService f19508d;

    public C1504c(MoneytiserService moneytiserService, String str, Hopmn hopmn, int i2) {
        this.f19508d = moneytiserService;
        this.f19505a = str;
        this.f19506b = hopmn;
        this.f19507c = i2;
    }

    @Override // o5.InterfaceC1472d
    public void onFailure(String str) {
        int i2 = MoneytiserService.f16795m;
        int i7 = this.f19507c;
        int i8 = i7 + 1;
        AbstractC1643b.e("MoneytiserService", "Seed-mode registration failed on attempt %d: %s", Integer.valueOf(i8), str);
        if (i7 < 5) {
            this.f19508d.f16799j.postDelayed(new androidx.media3.common.util.d(this, this.f19505a, i7, 3), i8 * C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        } else {
            AbstractC1643b.e("MoneytiserService", "Seed-mode registration failed after max retries", new Object[0]);
        }
    }

    @Override // o5.InterfaceC1472d
    public void onSuccess(String str) {
        int i2 = MoneytiserService.f16795m;
        String str2 = this.f19505a;
        AbstractC1643b.d("MoneytiserService", "Seed-mode device %s registered, response: %s", str2, str);
        MoneytiserService moneytiserService = this.f19508d;
        Hopmn hopmn = this.f19506b;
        if (str != null && str.matches("[a-zA-Z]*")) {
            hopmn.getDataStore().set(moneytiserService.getString(R.string.hopmon_country_key), str);
            hopmn.setCountry(str);
        }
        hopmn.getDataStore().set(moneytiserService.getString(R.string.hopmon_uid_key), str2);
        hopmn.setUid(str2);
        hopmn.getDataStore().set("hopmon.registered_at", System.currentTimeMillis());
        hopmn.getDataStore().set("hopmon.registered_version", "15.0.17");
        moneytiserService.f16796b.schedule(str2, str);
    }
}
