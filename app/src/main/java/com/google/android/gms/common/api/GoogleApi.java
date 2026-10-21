package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zabv;
import com.google.android.gms.common.api.internal.zact;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10588a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10589b;

    /* renamed from: c, reason: collision with root package name */
    public final Api f10590c;

    /* renamed from: d, reason: collision with root package name */
    public final Api.ApiOptions f10591d;

    /* renamed from: e, reason: collision with root package name */
    public final ApiKey f10592e;

    /* renamed from: f, reason: collision with root package name */
    public final Looper f10593f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10594g;

    /* renamed from: h, reason: collision with root package name */
    public final ApiExceptionMapper f10595h;

    /* renamed from: i, reason: collision with root package name */
    public final GoogleApiManager f10596i;

    @KeepForSdk
    public static class Settings {

        /* renamed from: c, reason: collision with root package name */
        public static final Settings f10597c = new Builder().build();

        /* renamed from: a, reason: collision with root package name */
        public final ApiExceptionMapper f10598a;

        /* renamed from: b, reason: collision with root package name */
        public final Looper f10599b;

        @KeepForSdk
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public ApiExceptionMapper f10600a;

            /* renamed from: b, reason: collision with root package name */
            public Looper f10601b;

            @KeepForSdk
            public Builder() {
            }

            @KeepForSdk
            public Settings build() {
                if (this.f10600a == null) {
                    this.f10600a = new ApiExceptionMapper();
                }
                if (this.f10601b == null) {
                    this.f10601b = Looper.getMainLooper();
                }
                return new Settings(this.f10600a, this.f10601b);
            }
        }

        public Settings(ApiExceptionMapper apiExceptionMapper, Looper looper) {
            this.f10598a = apiExceptionMapper;
            this.f10599b = looper;
        }
    }

    @KeepForSdk
    public GoogleApi(Context context, Api<O> api, O o6, Settings settings) {
        Preconditions.checkNotNull(context, "Null context is not permitted.");
        Preconditions.checkNotNull(api, "Api must not be null.");
        Preconditions.checkNotNull(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f10588a = context.getApplicationContext();
        String str = null;
        if (PlatformVersion.isAtLeastR()) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        this.f10589b = str;
        this.f10590c = api;
        this.f10591d = o6;
        this.f10593f = settings.f10599b;
        this.f10592e = ApiKey.zaa(api, o6, str);
        new zabv(this);
        GoogleApiManager zam = GoogleApiManager.zam(this.f10588a);
        this.f10596i = zam;
        this.f10594g = zam.zaa();
        this.f10595h = settings.f10598a;
        zam.zaB(this);
    }

    @KeepForSdk
    public ClientSettings.Builder createClientSettingsBuilder() {
        Set<Scope> set;
        GoogleSignInAccount googleSignInAccount;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        Api.ApiOptions apiOptions = this.f10591d;
        builder.zab((!(apiOptions instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccount = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).getGoogleSignInAccount()) == null) ? apiOptions instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) apiOptions).getAccount() : null : googleSignInAccount.getAccount());
        if (apiOptions instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) {
            GoogleSignInAccount googleSignInAccount2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).getGoogleSignInAccount();
            set = googleSignInAccount2 == null ? Collections.EMPTY_SET : googleSignInAccount2.getRequestedScopes();
        } else {
            set = Collections.EMPTY_SET;
        }
        builder.zaa(set);
        Context context = this.f10588a;
        builder.zac(context.getClass().getName());
        builder.setRealClientPackageName(context.getPackageName());
        return builder;
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doBestEffortWrite(TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f10596i.zax(this, 2, taskApiCall, taskCompletionSource, this.f10595h);
        return taskCompletionSource.getTask();
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doRead(TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f10596i.zax(this, 0, taskApiCall, taskCompletionSource, this.f10595h);
        return taskCompletionSource.getTask();
    }

    @KeepForSdk
    public <A extends Api.AnyClient> Task<Void> doRegisterEventListener(RegistrationMethods<A, ?> registrationMethods) {
        Preconditions.checkNotNull(registrationMethods);
        Preconditions.checkNotNull(registrationMethods.f10651a.getListenerKey(), "Listener has already been released.");
        UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod = registrationMethods.f10652b;
        Preconditions.checkNotNull(unregisterListenerMethod.getListenerKey(), "Listener has already been released.");
        return this.f10596i.zaq(this, registrationMethods.f10651a, unregisterListenerMethod, registrationMethods.f10653c);
    }

    @KeepForSdk
    public Task<Boolean> doUnregisterEventListener(ListenerHolder.ListenerKey<?> listenerKey, int i2) {
        Preconditions.checkNotNull(listenerKey, "Listener key cannot be null.");
        return this.f10596i.zar(this, listenerKey, i2);
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doWrite(T t6) {
        t6.zak();
        this.f10596i.zaw(this, 1, t6);
        return t6;
    }

    public final ApiKey<O> getApiKey() {
        return this.f10592e;
    }

    @KeepForSdk
    public Context getApplicationContext() {
        return this.f10588a;
    }

    @KeepForSdk
    public String getContextAttributionTag() {
        return this.f10589b;
    }

    @KeepForSdk
    public Looper getLooper() {
        return this.f10593f;
    }

    @KeepForSdk
    public <L> ListenerHolder<L> registerListener(L l7, String str) {
        return ListenerHolders.createListenerHolder(l7, this.f10593f, str);
    }

    public final int zaa() {
        return this.f10594g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Api.Client zab(Looper looper, zabq<O> zabqVar) {
        Api.Client buildClient = ((Api.AbstractClientBuilder) Preconditions.checkNotNull(this.f10590c.zaa())).buildClient(this.f10588a, looper, createClientSettingsBuilder().build(), (ClientSettings) this.f10591d, (GoogleApiClient.ConnectionCallbacks) zabqVar, (GoogleApiClient.OnConnectionFailedListener) zabqVar);
        String contextAttributionTag = getContextAttributionTag();
        if (contextAttributionTag != null && (buildClient instanceof BaseGmsClient)) {
            ((BaseGmsClient) buildClient).setAttributionTag(contextAttributionTag);
        }
        if (contextAttributionTag != null && (buildClient instanceof NonGmsServiceBrokerClient)) {
            ((NonGmsServiceBrokerClient) buildClient).zac(contextAttributionTag);
        }
        return buildClient;
    }

    public final zact zac(Context context, Handler handler) {
        return new zact(context, handler, createClientSettingsBuilder().build());
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doWrite(TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f10596i.zax(this, 1, taskApiCall, taskCompletionSource, this.f10595h);
        return taskCompletionSource.getTask();
    }
}
