package com.google.android.gms.cast;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public final class TextTrackStyle extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<TextTrackStyle> CREATOR = new zzds();

    /* renamed from: b, reason: collision with root package name */
    public float f9792b;

    /* renamed from: e, reason: collision with root package name */
    public int f9793e;

    /* renamed from: f, reason: collision with root package name */
    public int f9794f;

    /* renamed from: j, reason: collision with root package name */
    public int f9795j;

    /* renamed from: m, reason: collision with root package name */
    public int f9796m;

    /* renamed from: n, reason: collision with root package name */
    public int f9797n;

    /* renamed from: p, reason: collision with root package name */
    public int f9798p;

    /* renamed from: q, reason: collision with root package name */
    public int f9799q;

    /* renamed from: r, reason: collision with root package name */
    public String f9800r;

    /* renamed from: s, reason: collision with root package name */
    public int f9801s;

    /* renamed from: t, reason: collision with root package name */
    public int f9802t;

    /* renamed from: u, reason: collision with root package name */
    public String f9803u;

    /* renamed from: v, reason: collision with root package name */
    public JSONObject f9804v;

    public TextTrackStyle() {
        this(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    public static final int a(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static final String b(int i2) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(Color.red(i2)), Integer.valueOf(Color.green(i2)), Integer.valueOf(Color.blue(i2)), Integer.valueOf(Color.alpha(i2)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        JSONObject jSONObject = this.f9804v;
        boolean z6 = jSONObject == null;
        JSONObject jSONObject2 = textTrackStyle.f9804v;
        if (z6 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.f9792b == textTrackStyle.f9792b && this.f9793e == textTrackStyle.f9793e && this.f9794f == textTrackStyle.f9794f && this.f9795j == textTrackStyle.f9795j && this.f9796m == textTrackStyle.f9796m && this.f9797n == textTrackStyle.f9797n && this.f9798p == textTrackStyle.f9798p && this.f9799q == textTrackStyle.f9799q && CastUtils.zze(this.f9800r, textTrackStyle.f9800r) && this.f9801s == textTrackStyle.f9801s && this.f9802t == textTrackStyle.f9802t;
    }

    @KeepForSdk
    public void fromJson(JSONObject jSONObject) throws JSONException {
        this.f9792b = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.f9793e = a(jSONObject.optString("foregroundColor"));
        this.f9794f = a(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            String string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.f9795j = 0;
            } else if ("OUTLINE".equals(string)) {
                this.f9795j = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.f9795j = 2;
            } else if ("RAISED".equals(string)) {
                this.f9795j = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.f9795j = 4;
            }
        }
        this.f9796m = a(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            String string2 = jSONObject.getString("windowType");
            if ("NONE".equals(string2)) {
                this.f9797n = 0;
            } else if ("NORMAL".equals(string2)) {
                this.f9797n = 1;
            } else if ("ROUNDED_CORNERS".equals(string2)) {
                this.f9797n = 2;
            }
        }
        this.f9798p = a(jSONObject.optString("windowColor"));
        if (this.f9797n == 2) {
            this.f9799q = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.f9800r = CastUtils.optStringOrNull(jSONObject, "fontFamily");
        if (jSONObject.has("fontGenericFamily")) {
            String string3 = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string3)) {
                this.f9801s = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string3)) {
                this.f9801s = 1;
            } else if ("SERIF".equals(string3)) {
                this.f9801s = 2;
            } else if ("MONOSPACED_SERIF".equals(string3)) {
                this.f9801s = 3;
            } else if ("CASUAL".equals(string3)) {
                this.f9801s = 4;
            } else if ("CURSIVE".equals(string3)) {
                this.f9801s = 5;
            } else if ("SMALL_CAPITALS".equals(string3)) {
                this.f9801s = 6;
            }
        }
        if (jSONObject.has("fontStyle")) {
            String string4 = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string4)) {
                this.f9802t = 0;
            } else if ("BOLD".equals(string4)) {
                this.f9802t = 1;
            } else if ("ITALIC".equals(string4)) {
                this.f9802t = 2;
            } else if ("BOLD_ITALIC".equals(string4)) {
                this.f9802t = 3;
            }
        }
        this.f9804v = jSONObject.optJSONObject("customData");
    }

    public int getBackgroundColor() {
        return this.f9794f;
    }

    public int getEdgeColor() {
        return this.f9796m;
    }

    public int getEdgeType() {
        return this.f9795j;
    }

    public String getFontFamily() {
        return this.f9800r;
    }

    public int getFontGenericFamily() {
        return this.f9801s;
    }

    public float getFontScale() {
        return this.f9792b;
    }

    public int getFontStyle() {
        return this.f9802t;
    }

    public int getForegroundColor() {
        return this.f9793e;
    }

    public int getWindowColor() {
        return this.f9798p;
    }

    public int getWindowCornerRadius() {
        return this.f9799q;
    }

    public int getWindowType() {
        return this.f9797n;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.f9792b), Integer.valueOf(this.f9793e), Integer.valueOf(this.f9794f), Integer.valueOf(this.f9795j), Integer.valueOf(this.f9796m), Integer.valueOf(this.f9797n), Integer.valueOf(this.f9798p), Integer.valueOf(this.f9799q), this.f9800r, Integer.valueOf(this.f9801s), Integer.valueOf(this.f9802t), String.valueOf(this.f9804v));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9804v;
        this.f9803u = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, getFontScale());
        SafeParcelWriter.writeInt(parcel, 3, getForegroundColor());
        SafeParcelWriter.writeInt(parcel, 4, getBackgroundColor());
        SafeParcelWriter.writeInt(parcel, 5, getEdgeType());
        SafeParcelWriter.writeInt(parcel, 6, getEdgeColor());
        SafeParcelWriter.writeInt(parcel, 7, getWindowType());
        SafeParcelWriter.writeInt(parcel, 8, getWindowColor());
        SafeParcelWriter.writeInt(parcel, 9, getWindowCornerRadius());
        SafeParcelWriter.writeString(parcel, 10, getFontFamily(), false);
        SafeParcelWriter.writeInt(parcel, 11, getFontGenericFamily());
        SafeParcelWriter.writeInt(parcel, 12, getFontStyle());
        SafeParcelWriter.writeString(parcel, 13, this.f9803u, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fontScale", this.f9792b);
            int i2 = this.f9793e;
            if (i2 != 0) {
                jSONObject.put("foregroundColor", b(i2));
            }
            int i7 = this.f9794f;
            if (i7 != 0) {
                jSONObject.put("backgroundColor", b(i7));
            }
            int i8 = this.f9795j;
            if (i8 == 0) {
                jSONObject.put("edgeType", "NONE");
            } else if (i8 == 1) {
                jSONObject.put("edgeType", "OUTLINE");
            } else if (i8 == 2) {
                jSONObject.put("edgeType", "DROP_SHADOW");
            } else if (i8 == 3) {
                jSONObject.put("edgeType", "RAISED");
            } else if (i8 == 4) {
                jSONObject.put("edgeType", "DEPRESSED");
            }
            int i9 = this.f9796m;
            if (i9 != 0) {
                jSONObject.put("edgeColor", b(i9));
            }
            int i10 = this.f9797n;
            if (i10 == 0) {
                jSONObject.put("windowType", "NONE");
            } else if (i10 == 1) {
                jSONObject.put("windowType", "NORMAL");
            } else if (i10 == 2) {
                jSONObject.put("windowType", "ROUNDED_CORNERS");
            }
            int i11 = this.f9798p;
            if (i11 != 0) {
                jSONObject.put("windowColor", b(i11));
            }
            if (this.f9797n == 2) {
                jSONObject.put("windowRoundedCornerRadius", this.f9799q);
            }
            String str = this.f9800r;
            if (str != null) {
                jSONObject.put("fontFamily", str);
            }
            switch (this.f9801s) {
                case 0:
                    jSONObject.put("fontGenericFamily", "SANS_SERIF");
                    break;
                case 1:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SANS_SERIF");
                    break;
                case 2:
                    jSONObject.put("fontGenericFamily", "SERIF");
                    break;
                case 3:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SERIF");
                    break;
                case 4:
                    jSONObject.put("fontGenericFamily", "CASUAL");
                    break;
                case 5:
                    jSONObject.put("fontGenericFamily", "CURSIVE");
                    break;
                case 6:
                    jSONObject.put("fontGenericFamily", "SMALL_CAPITALS");
                    break;
            }
            int i12 = this.f9802t;
            if (i12 == 0) {
                jSONObject.put("fontStyle", "NORMAL");
            } else if (i12 == 1) {
                jSONObject.put("fontStyle", "BOLD");
            } else if (i12 == 2) {
                jSONObject.put("fontStyle", "ITALIC");
            } else if (i12 == 3) {
                jSONObject.put("fontStyle", "BOLD_ITALIC");
            }
            JSONObject jSONObject2 = this.f9804v;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public TextTrackStyle(float f3, int i2, int i7, int i8, int i9, int i10, int i11, int i12, String str, int i13, int i14, String str2) {
        this.f9792b = f3;
        this.f9793e = i2;
        this.f9794f = i7;
        this.f9795j = i8;
        this.f9796m = i9;
        this.f9797n = i10;
        this.f9798p = i11;
        this.f9799q = i12;
        this.f9800r = str;
        this.f9801s = i13;
        this.f9802t = i14;
        this.f9803u = str2;
        if (str2 == null) {
            this.f9804v = null;
            return;
        }
        try {
            this.f9804v = new JSONObject(this.f9803u);
        } catch (JSONException unused) {
            this.f9804v = null;
            this.f9803u = null;
        }
    }
}
