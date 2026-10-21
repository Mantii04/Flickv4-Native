.class public Lcom/loopj/android/http/BearerAuthSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;
    }
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
.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
