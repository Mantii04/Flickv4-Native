package h5;

import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* renamed from: h5.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0998l implements Converter {
    @Override // retrofit2.Converter
    public j6.h convert(ResponseBody responseBody) throws IOException {
        return g6.e.parse(responseBody.string());
    }
}
