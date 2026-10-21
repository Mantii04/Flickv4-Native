package O4;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final class c implements Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f2438b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f2439e;

    public c(e eVar, d dVar) {
        this.f2439e = eVar;
        this.f2438b = dVar;
    }

    @Override // retrofit2.Callback
    public void onFailure(Call<Void> call, Throwable th) {
        this.f2438b.onFailure(th);
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<Void> call, Response<Void> response) {
        boolean isSuccessful = response.isSuccessful();
        d dVar = this.f2438b;
        if (!isSuccessful) {
            dVar.onError(response.code(), response.message());
        } else {
            D4.c.clearAuthToken(this.f2439e.f2442b);
            dVar.onSuccess(null);
        }
    }
}
