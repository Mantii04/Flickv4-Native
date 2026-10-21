.class public Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 0

    .line 1
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    .line 2
    .line 3
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 0

    .line 1
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    .line 2
    .line 3
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
