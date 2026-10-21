.class public Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public client_id:Ljava/lang/String;

.field public client_secret:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public grant_type:Ljava/lang/String;

.field public redirect_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "authorization_code"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;->grant_type:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;->code:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;->client_id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;->client_secret:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;->redirect_uri:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
