package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class FastJsonResponse {

    @VisibleForTesting
    @SafeParcelable.Class
    @ShowFirstParty
    @KeepForSdk
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();

        /* renamed from: b, reason: collision with root package name */
        public final int f10992b;

        /* renamed from: e, reason: collision with root package name */
        public final int f10993e;

        /* renamed from: f, reason: collision with root package name */
        public final boolean f10994f;

        /* renamed from: j, reason: collision with root package name */
        public final int f10995j;

        /* renamed from: m, reason: collision with root package name */
        public final boolean f10996m;

        /* renamed from: n, reason: collision with root package name */
        public final String f10997n;

        /* renamed from: p, reason: collision with root package name */
        public final int f10998p;

        /* renamed from: q, reason: collision with root package name */
        public final Class f10999q;

        /* renamed from: r, reason: collision with root package name */
        public final String f11000r;

        /* renamed from: s, reason: collision with root package name */
        public zan f11001s;

        /* renamed from: t, reason: collision with root package name */
        public final FieldConverter f11002t;

        public Field(int i2, int i7, boolean z6, int i8, boolean z7, String str, int i9, String str2, com.google.android.gms.common.server.converter.zaa zaaVar) {
            this.f10992b = i2;
            this.f10993e = i7;
            this.f10994f = z6;
            this.f10995j = i8;
            this.f10996m = z7;
            this.f10997n = str;
            this.f10998p = i9;
            if (str2 == null) {
                this.f10999q = null;
                this.f11000r = null;
            } else {
                this.f10999q = SafeParcelResponse.class;
                this.f11000r = str2;
            }
            if (zaaVar == null) {
                this.f11002t = null;
            } else {
                this.f11002t = zaaVar.zab();
            }
        }

        @KeepForSdk
        public int getSafeParcelableFieldId() {
            return this.f10998p;
        }

        public final String toString() {
            Objects.ToStringHelper add = Objects.toStringHelper(this).add("versionCode", Integer.valueOf(this.f10992b)).add("typeIn", Integer.valueOf(this.f10993e)).add("typeInArray", Boolean.valueOf(this.f10994f)).add("typeOut", Integer.valueOf(this.f10995j)).add("typeOutArray", Boolean.valueOf(this.f10996m)).add("outputFieldName", this.f10997n).add("safeParcelFieldId", Integer.valueOf(this.f10998p));
            String str = this.f11000r;
            if (str == null) {
                str = null;
            }
            Objects.ToStringHelper add2 = add.add("concreteTypeName", str);
            Class cls = this.f10999q;
            if (cls != null) {
                add2.add("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter fieldConverter = this.f11002t;
            if (fieldConverter != null) {
                add2.add("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return add2.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.f10992b);
            SafeParcelWriter.writeInt(parcel, 2, this.f10993e);
            SafeParcelWriter.writeBoolean(parcel, 3, this.f10994f);
            SafeParcelWriter.writeInt(parcel, 4, this.f10995j);
            SafeParcelWriter.writeBoolean(parcel, 5, this.f10996m);
            SafeParcelWriter.writeString(parcel, 6, this.f10997n, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            String str = this.f11000r;
            if (str == null) {
                str = null;
            }
            SafeParcelWriter.writeString(parcel, 8, str, false);
            FieldConverter fieldConverter = this.f11002t;
            SafeParcelWriter.writeParcelable(parcel, 9, fieldConverter != null ? com.google.android.gms.common.server.converter.zaa.zaa(fieldConverter) : null, i2, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        public final I zaf(O o6) {
            FieldConverter fieldConverter = this.f11002t;
            Preconditions.checkNotNull(fieldConverter);
            return (I) fieldConverter.zad(o6);
        }

        public final Map<String, Field<?, ?>> zah() {
            String str = this.f11000r;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(this.f11001s);
            return (Map) Preconditions.checkNotNull(this.f11001s.zab(str));
        }

        public final void zai(zan zanVar) {
            this.f11001s = zanVar;
        }

        public final boolean zaj() {
            return this.f11002t != null;
        }
    }

    @ShowFirstParty
    public interface FieldConverter<I, O> {
        I zad(O o6);
    }

    public static final void a(StringBuilder sb, Field field, Object obj) {
        int i2 = field.f10993e;
        if (i2 == 11) {
            Class cls = field.f10999q;
            Preconditions.checkNotNull(cls);
            sb.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else {
            if (i2 != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(JsonUtils.escapeString((String) obj));
            sb.append("\"");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <O, I> I zaD(Field<I, O> field, Object obj) {
        return field.f11002t != null ? field.zaf(obj) : obj;
    }

    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    @KeepForSdk
    public Object getFieldValue(Field field) {
        String str = field.f10997n;
        if (field.f10999q == null) {
            return getValueObject(str);
        }
        Preconditions.checkState(getValueObject(str) == null, "Concrete field shouldn't be value object: %s", field.f10997n);
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    @KeepForSdk
    public abstract Object getValueObject(String str);

    @KeepForSdk
    public boolean isFieldSet(Field field) {
        if (field.f10995j != 11) {
            return isPrimitiveFieldSet(field.f10997n);
        }
        if (field.f10996m) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    @KeepForSdk
    public abstract boolean isPrimitiveFieldSet(String str);

    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zaD = zaD(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (zaD != null) {
                    switch (field.f10995j) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64Utils.encode((byte[]) zaD));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64Utils.encodeUrlSafe((byte[]) zaD));
                            sb.append("\"");
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) zaD);
                            break;
                        default:
                            if (field.f10994f) {
                                ArrayList arrayList = (ArrayList) zaD;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    if (i2 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i2);
                                    if (obj != null) {
                                        a(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                break;
                            } else {
                                a(sb, field, zaD);
                                break;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
