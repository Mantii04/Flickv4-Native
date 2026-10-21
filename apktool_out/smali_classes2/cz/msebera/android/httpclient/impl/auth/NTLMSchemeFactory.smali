.class public Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;

    .line 2
    .line 3
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;

    .line 2
    .line 3
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
