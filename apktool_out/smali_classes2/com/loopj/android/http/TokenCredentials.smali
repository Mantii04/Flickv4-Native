.class public Lcom/loopj/android/http/TokenCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/Credentials;


# instance fields
.field private userPrincipal:Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/loopj/android/http/TokenCredentials;->userPrincipal:Ljava/security/Principal;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loopj/android/http/TokenCredentials;->userPrincipal:Ljava/security/Principal;

    .line 2
    .line 3
    return-object v0
.end method
