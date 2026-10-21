package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR;

    /* renamed from: b, reason: collision with root package name */
    public final IntentSender f4917b;

    /* renamed from: e, reason: collision with root package name */
    public final Intent f4918e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4919f;

    /* renamed from: j, reason: collision with root package name */
    public final int f4920j;

    static {
        new l(null);
        CREATOR = new k();
    }

    public m(IntentSender intentSender, Intent intent, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(intentSender, "intentSender");
        this.f4917b = intentSender;
        this.f4918e = intent;
        this.f4919f = i2;
        this.f4920j = i7;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Intent getFillInIntent() {
        return this.f4918e;
    }

    public final int getFlagsMask() {
        return this.f4919f;
    }

    public final int getFlagsValues() {
        return this.f4920j;
    }

    public final IntentSender getIntentSender() {
        return this.f4917b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(dest, "dest");
        dest.writeParcelable(this.f4917b, i2);
        dest.writeParcelable(this.f4918e, i2);
        dest.writeInt(this.f4919f);
        dest.writeInt(this.f4920j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m(android.os.Parcel r4) {
        /*
            r3 = this;
            java.lang.String r0 = "parcel"
            kotlin.jvm.internal.j.checkNotNullParameter(r4, r0)
            java.lang.Class<android.content.IntentSender> r0 = android.content.IntentSender.class
            java.lang.ClassLoader r0 = r0.getClassLoader()
            android.os.Parcelable r0 = r4.readParcelable(r0)
            kotlin.jvm.internal.j.checkNotNull(r0)
            android.content.IntentSender r0 = (android.content.IntentSender) r0
            java.lang.Class<android.content.Intent> r1 = android.content.Intent.class
            java.lang.ClassLoader r1 = r1.getClassLoader()
            android.os.Parcelable r1 = r4.readParcelable(r1)
            android.content.Intent r1 = (android.content.Intent) r1
            int r2 = r4.readInt()
            int r4 = r4.readInt()
            r3.<init>(r0, r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.result.m.<init>(android.os.Parcel):void");
    }
}
