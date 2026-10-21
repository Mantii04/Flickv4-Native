.class public abstract LD4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lflix/com/vision/api/iAPIMovieInterface;

.field public static b:Lflix/com/vision/api/iAPIMovieInterface;

.field public static c:Lflix/com/vision/api/iAPIMovieInterface;

.field public static d:Lflix/com/vision/api/iAPIMovieInterface;

.field public static e:Lflix/com/vision/api/iAPIMovieInterface;

.field public static f:Lflix/com/vision/api/torbox/TorboxApi;

.field public static g:Lflix/com/vision/api/offcloud/OffcloudApi;

.field public static h:Lflix/com/vision/api/IntroDbApi;


# direct methods
.method public static getInstanceAllDebridAPI()Lflix/com/vision/api/iAPIMovieInterface;
    .locals 3

    .line 1
    sget-object v0, LD4/k;->c:Lflix/com/vision/api/iAPIMovieInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 6
    .line 7
    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lretrofit2/Retrofit$Builder;

    .line 16
    .line 17
    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "https://api.alldebrid.com"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 43
    .line 44
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-class v1, Lflix/com/vision/api/iAPIMovieInterface;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 70
    .line 71
    sput-object v0, LD4/k;->c:Lflix/com/vision/api/iAPIMovieInterface;

    .line 72
    .line 73
    :cond_0
    sget-object v0, LD4/k;->c:Lflix/com/vision/api/iAPIMovieInterface;

    .line 74
    .line 75
    return-object v0
.end method

.method public static getInstanceDebrid()Lflix/com/vision/api/iAPIMovieInterface;
    .locals 3

    .line 1
    sget-object v0, LD4/k;->d:Lflix/com/vision/api/iAPIMovieInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 6
    .line 7
    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lretrofit2/Retrofit$Builder;

    .line 16
    .line 17
    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "https://api.real-debrid.com"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 43
    .line 44
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-class v1, Lflix/com/vision/api/iAPIMovieInterface;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 70
    .line 71
    sput-object v0, LD4/k;->d:Lflix/com/vision/api/iAPIMovieInterface;

    .line 72
    .line 73
    :cond_0
    sget-object v0, LD4/k;->d:Lflix/com/vision/api/iAPIMovieInterface;

    .line 74
    .line 75
    return-object v0
.end method

.method public static getInstanceFlix(Ljava/lang/String;)Lflix/com/vision/api/iAPIMovieInterface;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lretrofit2/Retrofit$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 40
    .line 41
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, LD4/i;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-class v0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 72
    .line 73
    sput-object p0, LD4/k;->a:Lflix/com/vision/api/iAPIMovieInterface;

    .line 74
    .line 75
    return-object p0
.end method

.method public static getInstanceIntroDBAPI()Lflix/com/vision/api/IntroDbApi;
    .locals 2

    .line 1
    sget-object v0, LD4/k;->h:Lflix/com/vision/api/IntroDbApi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "https://api.introdb.app/"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-class v1, Lflix/com/vision/api/IntroDbApi;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lflix/com/vision/api/IntroDbApi;

    .line 43
    .line 44
    sput-object v0, LD4/k;->h:Lflix/com/vision/api/IntroDbApi;

    .line 45
    .line 46
    :cond_0
    sget-object v0, LD4/k;->h:Lflix/com/vision/api/IntroDbApi;

    .line 47
    .line 48
    return-object v0
.end method

.method public static getInstanceOffcloudAPI()Lflix/com/vision/api/offcloud/OffcloudApi;
    .locals 2

    .line 1
    sget-object v0, LD4/k;->g:Lflix/com/vision/api/offcloud/OffcloudApi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "https://offcloud.com/"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-class v1, Lflix/com/vision/api/offcloud/OffcloudApi;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lflix/com/vision/api/offcloud/OffcloudApi;

    .line 43
    .line 44
    sput-object v0, LD4/k;->g:Lflix/com/vision/api/offcloud/OffcloudApi;

    .line 45
    .line 46
    :cond_0
    sget-object v0, LD4/k;->g:Lflix/com/vision/api/offcloud/OffcloudApi;

    .line 47
    .line 48
    return-object v0
.end method

.method public static getInstancePremiumizeAPI()Lflix/com/vision/api/iAPIMovieInterface;
    .locals 3

    .line 1
    sget-object v0, LD4/k;->c:Lflix/com/vision/api/iAPIMovieInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 6
    .line 7
    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lretrofit2/Retrofit$Builder;

    .line 16
    .line 17
    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "https://www.premiumize.me"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 43
    .line 44
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-class v1, Lflix/com/vision/api/iAPIMovieInterface;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 70
    .line 71
    sput-object v0, LD4/k;->c:Lflix/com/vision/api/iAPIMovieInterface;

    .line 72
    .line 73
    :cond_0
    sget-object v0, LD4/k;->c:Lflix/com/vision/api/iAPIMovieInterface;

    .line 74
    .line 75
    return-object v0
.end method

.method public static getInstanceRidoMovies(Ljava/lang/String;)Lflix/com/vision/api/iAPIMovieInterface;
    .locals 3

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 27
    .line 28
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, LD4/j;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-class v1, Lflix/com/vision/api/iAPIMovieInterface;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 59
    .line 60
    sput-object v0, LD4/k;->b:Lflix/com/vision/api/iAPIMovieInterface;

    .line 61
    .line 62
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 63
    .line 64
    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 70
    .line 71
    .line 72
    new-instance v2, Lretrofit2/Retrofit$Builder;

    .line 73
    .line 74
    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p0, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 98
    .line 99
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 123
    .line 124
    sput-object p0, LD4/k;->b:Lflix/com/vision/api/iAPIMovieInterface;

    .line 125
    .line 126
    return-object p0
.end method

.method public static getInstanceTorboxAPI()Lflix/com/vision/api/torbox/TorboxApi;
    .locals 2

    .line 1
    sget-object v0, LD4/k;->f:Lflix/com/vision/api/torbox/TorboxApi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "https://api.torbox.app/"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-class v1, Lflix/com/vision/api/torbox/TorboxApi;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lflix/com/vision/api/torbox/TorboxApi;

    .line 43
    .line 44
    sput-object v0, LD4/k;->f:Lflix/com/vision/api/torbox/TorboxApi;

    .line 45
    .line 46
    :cond_0
    sget-object v0, LD4/k;->f:Lflix/com/vision/api/torbox/TorboxApi;

    .line 47
    .line 48
    return-object v0
.end method

.method public static getNewHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 12
    .line 13
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static getRequestTmdb()Lflix/com/vision/api/iAPIMovieInterface;
    .locals 2

    .line 1
    sget-object v0, LD4/k;->e:Lflix/com/vision/api/iAPIMovieInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "https://api.themoviedb.org"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, LD4/k;->getNewHttpClient()Lokhttp3/OkHttpClient;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-class v1, Lflix/com/vision/api/iAPIMovieInterface;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lflix/com/vision/api/iAPIMovieInterface;

    .line 51
    .line 52
    sput-object v0, LD4/k;->e:Lflix/com/vision/api/iAPIMovieInterface;

    .line 53
    .line 54
    :cond_0
    sget-object v0, LD4/k;->e:Lflix/com/vision/api/iAPIMovieInterface;

    .line 55
    .line 56
    return-object v0
.end method
