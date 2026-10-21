.class public Lcom/uwetrottmann/trakt5/entities/ListIds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public slug:Ljava/lang/String;

.field public trakt:Ljava/lang/Integer;


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

.method public static slug(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/ListIds;
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/ListIds;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/ListIds;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/uwetrottmann/trakt5/entities/ListIds;->slug:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public static trakt(I)Lcom/uwetrottmann/trakt5/entities/ListIds;
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/ListIds;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/ListIds;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/uwetrottmann/trakt5/entities/ListIds;->trakt:Ljava/lang/Integer;

    .line 11
    .line 12
    return-object v0
.end method
