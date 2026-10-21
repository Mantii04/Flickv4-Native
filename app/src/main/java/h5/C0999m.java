package h5;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* renamed from: h5.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0999m extends Converter.Factory {
    public static C0999m create() {
        return new C0999m();
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (j6.h.class.equals(type)) {
            return new C0998l();
        }
        return null;
    }
}
