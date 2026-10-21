package b0;

import Y.i;
import a0.AbstractC0376c;
import a0.C0377d;
import a0.h;
import a0.j;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.PreferencesProto$Value$ValueCase;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.protobuf.F;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import u5.C1711j;
import v5.u;
import y5.InterfaceC1944c;

/* loaded from: classes.dex */
public final class g implements i {

    /* renamed from: a, reason: collision with root package name */
    public static final g f8336a = new g();

    public final String getFileExtension() {
        return "preferences_pb";
    }

    public Object readFrom(InputStream inputStream, InterfaceC1944c interfaceC1944c) throws IOException, CorruptionException {
        a0.f readFrom = AbstractC0376c.f4618a.readFrom(inputStream);
        MutablePreferences createMutable = AbstractC0627d.createMutable(new AbstractC0625b[0]);
        Map<String, j> preferencesMap = readFrom.getPreferencesMap();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(preferencesMap, "preferencesProto.preferencesMap");
        for (Map.Entry<String, j> entry : preferencesMap.entrySet()) {
            String name = entry.getKey();
            j value = entry.getValue();
            kotlin.jvm.internal.j.checkNotNullExpressionValue(name, "name");
            kotlin.jvm.internal.j.checkNotNullExpressionValue(value, "value");
            PreferencesProto$Value$ValueCase valueCase = value.getValueCase();
            switch (valueCase == null ? -1 : f.f8335a[valueCase.ordinal()]) {
                case -1:
                    throw new CorruptionException("Value case is null.", null, 2, null);
                case 0:
                default:
                    throw new NoWhenBranchMatchedException();
                case 1:
                    createMutable.set(AbstractC0628e.booleanKey(name), Boolean.valueOf(value.getBoolean()));
                    break;
                case 2:
                    createMutable.set(AbstractC0628e.floatKey(name), Float.valueOf(value.getFloat()));
                    break;
                case 3:
                    createMutable.set(AbstractC0628e.doubleKey(name), Double.valueOf(value.getDouble()));
                    break;
                case 4:
                    createMutable.set(AbstractC0628e.intKey(name), Integer.valueOf(value.getInteger()));
                    break;
                case 5:
                    createMutable.set(AbstractC0628e.longKey(name), Long.valueOf(value.getLong()));
                    break;
                case 6:
                    C0624a stringKey = AbstractC0628e.stringKey(name);
                    String string = value.getString();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(string, "value.string");
                    createMutable.set(stringKey, string);
                    break;
                case 7:
                    C0624a stringSetKey = AbstractC0628e.stringSetKey(name);
                    List<String> stringsList = value.getStringSet().getStringsList();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(stringsList, "value.stringSet.stringsList");
                    createMutable.set(stringSetKey, u.toSet(stringsList));
                    break;
                case 8:
                    throw new CorruptionException("Value not set.", null, 2, null);
            }
        }
        return createMutable.toPreferences();
    }

    /* renamed from: getDefaultValue, reason: merged with bridge method [inline-methods] */
    public AbstractC0626c m65getDefaultValue() {
        return AbstractC0627d.createEmpty();
    }

    public Object writeTo(AbstractC0626c abstractC0626c, OutputStream outputStream, InterfaceC1944c interfaceC1944c) throws IOException, CorruptionException {
        F build;
        Map<C0624a, Object> asMap = abstractC0626c.asMap();
        C0377d newBuilder = a0.f.newBuilder();
        for (Map.Entry<C0624a, Object> entry : asMap.entrySet()) {
            C0624a key = entry.getKey();
            Object value = entry.getValue();
            String name = key.getName();
            if (value instanceof Boolean) {
                build = j.newBuilder().setBoolean(((Boolean) value).booleanValue()).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setBoolean(value).build()");
            } else if (value instanceof Float) {
                build = j.newBuilder().setFloat(((Number) value).floatValue()).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setFloat(value).build()");
            } else if (value instanceof Double) {
                build = j.newBuilder().setDouble(((Number) value).doubleValue()).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setDouble(value).build()");
            } else if (value instanceof Integer) {
                build = j.newBuilder().setInteger(((Number) value).intValue()).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setInteger(value).build()");
            } else if (value instanceof Long) {
                build = j.newBuilder().setLong(((Number) value).longValue()).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setLong(value).build()");
            } else if (value instanceof String) {
                build = j.newBuilder().setString((String) value).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setString(value).build()");
            } else {
                if (!(value instanceof Set)) {
                    throw new IllegalStateException(kotlin.jvm.internal.j.stringPlus("PreferencesSerializer does not support type: ", value.getClass().getName()));
                }
                build = j.newBuilder().setStringSet(h.newBuilder().addAllStrings((Set) value)).build();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "newBuilder().setStringSet(\n                    StringSet.newBuilder().addAllStrings(value as Set<String>)\n                ).build()");
            }
            newBuilder.putPreferences(name, (j) build);
        }
        ((a0.f) newBuilder.build()).writeTo(outputStream);
        return C1711j.f20329a;
    }
}
