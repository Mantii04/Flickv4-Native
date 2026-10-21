package O4;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final class a implements Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f2436b;

    public a(e eVar, d dVar) {
        this.f2436b = dVar;
    }

    @Override // retrofit2.Callback
    public void onFailure(Call<F4.e> call, Throwable th) {
        this.f2436b.onFailure(th);
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<F4.e> call, Response<F4.e> response) {
        if (response.isSuccessful() && response.body() != null) {
            response.body().getClass();
            throw new ClassCastException();
        }
        this.f2436b.onError(response.code(), response.message());
    }
}
