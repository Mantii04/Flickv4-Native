.class public final Lcz/msebera/android/httpclient/auth/AuthOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

.field private final creds:Lcz/msebera/android/httpclient/auth/Credentials;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Auth scheme"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string v0, "User credentials"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 15
    .line 16
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->creds:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->creds:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
