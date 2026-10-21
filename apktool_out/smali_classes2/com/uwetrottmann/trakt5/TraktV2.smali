.class public Lcom/uwetrottmann/trakt5/TraktV2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_HOST:Ljava/lang/String; = "api.trakt.tv"

.field public static final API_STAGING_HOST:Ljava/lang/String; = "api-staging.trakt.tv"

.field public static final API_STAGING_URL:Ljava/lang/String; = "https://api-staging.trakt.tv/"

.field public static final API_URL:Ljava/lang/String; = "https://api.trakt.tv/"

.field public static final API_VERSION:Ljava/lang/String; = "2"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_TRAKT_API_KEY:Ljava/lang/String; = "trakt-api-key"

.field public static final HEADER_TRAKT_API_VERSION:Ljava/lang/String; = "trakt-api-version"

.field public static final OAUTH2_AUTHORIZATION_URL:Ljava/lang/String; = "https://trakt.tv/oauth/authorize"

.field public static final SITE_URL:Ljava/lang/String; = "https://trakt.tv"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final apiBaseUrl:Lokhttp3/HttpUrl;

.field private apiKey:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private redirectUri:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/uwetrottmann/trakt5/TraktV2;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/uwetrottmann/trakt5/TraktV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p4}, Lcom/uwetrottmann/trakt5/TraktV2;-><init>(Ljava/lang/String;Z)V

    .line 7
    iput-object p2, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 5
    const-string p1, "https://api-staging.trakt.tv/"

    goto :goto_0

    :cond_0
    const-string p1, "https://api.trakt.tv/"

    :goto_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiBaseUrl:Lokhttp3/HttpUrl;

    return-void
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method


# virtual methods
.method public accessToken(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/TraktV2;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public accessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public apiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiBaseUrl:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public apiKey(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/TraktV2;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public apiKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public authentication()Lcom/uwetrottmann/trakt5/services/Authentication;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Authentication;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Authentication;

    .line 12
    .line 13
    return-object v0
.end method

.method public buildAuthorizationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "https://trakt.tv/oauth/authorize?response_type=code&redirect_uri="

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/uwetrottmann/trakt5/TraktV2;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "&state="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/uwetrottmann/trakt5/TraktV2;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "&client_id="

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/uwetrottmann/trakt5/TraktV2;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "redirectUri not provided"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public calendars()Lcom/uwetrottmann/trakt5/services/Calendars;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Calendars;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Calendars;

    .line 12
    .line 13
    return-object v0
.end method

.method public checkForCheckinError(Lretrofit2/Response;)Lcom/uwetrottmann/trakt5/entities/CheckinError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lcom/uwetrottmann/trakt5/entities/CheckinError;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x199

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 17
    .line 18
    const-class v2, Lcom/uwetrottmann/trakt5/entities/CheckinError;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/CheckinError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :catch_0
    new-instance p1, Lcom/uwetrottmann/trakt5/entities/CheckinError;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/uwetrottmann/trakt5/entities/CheckinError;-><init>()V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public checkForTraktError(Lretrofit2/Response;)Lcom/uwetrottmann/trakt5/entities/TraktError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lcom/uwetrottmann/trakt5/entities/TraktError;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 15
    .line 16
    const-class v2, Lcom/uwetrottmann/trakt5/entities/TraktError;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/TraktError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :catch_0
    new-instance p1, Lcom/uwetrottmann/trakt5/entities/TraktError;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/uwetrottmann/trakt5/entities/TraktError;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public checkForTraktOAuthError(Lretrofit2/Response;)Lcom/uwetrottmann/trakt5/entities/TraktOAuthError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lcom/uwetrottmann/trakt5/entities/TraktOAuthError;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 15
    .line 16
    const-class v2, Lcom/uwetrottmann/trakt5/entities/TraktOAuthError;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/TraktOAuthError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    return-object p1

    .line 39
    :catch_0
    :cond_1
    new-instance p1, Lcom/uwetrottmann/trakt5/entities/TraktOAuthError;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/uwetrottmann/trakt5/entities/TraktOAuthError;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public checkin()Lcom/uwetrottmann/trakt5/services/Checkin;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 12
    .line 13
    return-object v0
.end method

.method public comments()Lcom/uwetrottmann/trakt5/services/Comments;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Comments;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Comments;

    .line 12
    .line 13
    return-object v0
.end method

.method public episodes()Lcom/uwetrottmann/trakt5/services/Episodes;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Episodes;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Episodes;

    .line 12
    .line 13
    return-object v0
.end method

.method public exchangeCodeForAccessToken(Ljava/lang/String;)Lretrofit2/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Response<",
            "Lcom/uwetrottmann/trakt5/entities/AccessToken;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->authentication()Lcom/uwetrottmann/trakt5/services/Authentication;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/uwetrottmann/trakt5/services/Authentication;->exchangeCodeForAccessToken(Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "redirectUri not provided"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "clientSecret not provided"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public exchangeDeviceCodeForAccessToken(Ljava/lang/String;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Response<",
            "Lcom/uwetrottmann/trakt5/entities/AccessToken;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;->client_id:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;->client_secret:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, v0, Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;->code:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->authentication()Lcom/uwetrottmann/trakt5/services/Authentication;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, v0}, Lcom/uwetrottmann/trakt5/services/Authentication;->exchangeDeviceCodeForAccessToken(Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;)Lretrofit2/Call;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "clientSecret not provided"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public generateDeviceCode()Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "Lcom/uwetrottmann/trakt5/entities/DeviceCode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/ClientId;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/ClientId;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/ClientId;->client_id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->authentication()Lcom/uwetrottmann/trakt5/services/Authentication;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, v0}, Lcom/uwetrottmann/trakt5/services/Authentication;->generateDeviceCode(Lcom/uwetrottmann/trakt5/entities/ClientId;)Lretrofit2/Call;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public genres()Lcom/uwetrottmann/trakt5/services/Genres;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Genres;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Genres;

    .line 12
    .line 13
    return-object v0
.end method

.method public movies()Lcom/uwetrottmann/trakt5/services/Movies;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Movies;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Movies;

    .line 12
    .line 13
    return-object v0
.end method

.method public declared-synchronized okHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/TraktV2;->setOkHttpClientDefaults(Lokhttp3/OkHttpClient$Builder;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->okHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public people()Lcom/uwetrottmann/trakt5/services/People;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/People;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/People;

    .line 12
    .line 13
    return-object v0
.end method

.method public recommendations()Lcom/uwetrottmann/trakt5/services/Recommendations;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Recommendations;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Recommendations;

    .line 12
    .line 13
    return-object v0
.end method

.method public refreshAccessToken(Ljava/lang/String;)Lretrofit2/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Response<",
            "Lcom/uwetrottmann/trakt5/entities/AccessToken;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->authentication()Lcom/uwetrottmann/trakt5/services/Authentication;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/uwetrottmann/trakt5/entities/AccessTokenRefreshRequest;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/uwetrottmann/trakt5/TraktV2;->clientSecret:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/uwetrottmann/trakt5/TraktV2;->redirectUri:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/uwetrottmann/trakt5/entities/AccessTokenRefreshRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/uwetrottmann/trakt5/services/Authentication;->refreshAccessToken(Lcom/uwetrottmann/trakt5/entities/AccessTokenRefreshRequest;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "redirectUri not provided"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "clientSecret not provided"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public refreshToken(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/TraktV2;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public retrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit:Lretrofit2/Retrofit;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofitBuilder()Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit:Lretrofit2/Retrofit;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit:Lretrofit2/Retrofit;

    .line 16
    .line 17
    return-object v0
.end method

.method public retrofitBuilder()Lretrofit2/Retrofit$Builder;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/TraktV2;->apiBaseUrl:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->getGsonBuilder()Lcom/google/gson/GsonBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->okHttpClient()Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public scrobble()Lcom/uwetrottmann/trakt5/services/Scrobble;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Scrobble;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Scrobble;

    .line 12
    .line 13
    return-object v0
.end method

.method public search()Lcom/uwetrottmann/trakt5/services/Search;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Search;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Search;

    .line 12
    .line 13
    return-object v0
.end method

.method public seasons()Lcom/uwetrottmann/trakt5/services/Seasons;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Seasons;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Seasons;

    .line 12
    .line 13
    return-object v0
.end method

.method public setOkHttpClientDefaults(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;-><init>(Lcom/uwetrottmann/trakt5/TraktV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/uwetrottmann/trakt5/TraktV2Authenticator;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/uwetrottmann/trakt5/TraktV2Authenticator;-><init>(Lcom/uwetrottmann/trakt5/TraktV2;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public shows()Lcom/uwetrottmann/trakt5/services/Shows;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Shows;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Shows;

    .line 12
    .line 13
    return-object v0
.end method

.method public sync()Lcom/uwetrottmann/trakt5/services/Sync;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Sync;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Sync;

    .line 12
    .line 13
    return-object v0
.end method

.method public users()Lcom/uwetrottmann/trakt5/services/Users;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/TraktV2;->retrofit()Lretrofit2/Retrofit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/uwetrottmann/trakt5/services/Users;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/uwetrottmann/trakt5/services/Users;

    .line 12
    .line 13
    return-object v0
.end method
