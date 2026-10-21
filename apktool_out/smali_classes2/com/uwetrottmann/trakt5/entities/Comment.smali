.class public Lcom/uwetrottmann/trakt5/entities/Comment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public comment:Ljava/lang/String;

.field public created_at:Lorg/threeten/bp/OffsetDateTime;

.field public episode:Lcom/uwetrottmann/trakt5/entities/Episode;

.field public id:Ljava/lang/Integer;

.field public likes:Ljava/lang/Integer;

.field public movie:Lcom/uwetrottmann/trakt5/entities/Movie;

.field public parent_id:Ljava/lang/Integer;

.field public replies:Ljava/lang/Integer;

.field public review:Ljava/lang/Boolean;

.field public show:Lcom/uwetrottmann/trakt5/entities/Show;

.field public spoiler:Ljava/lang/Boolean;

.field public updated_at:Lorg/threeten/bp/OffsetDateTime;

.field public user:Lcom/uwetrottmann/trakt5/entities/User;

.field public user_rating:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/uwetrottmann/trakt5/entities/Episode;Ljava/lang/String;ZZ)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lcom/uwetrottmann/trakt5/entities/Comment;-><init>(Ljava/lang/String;ZZ)V

    .line 7
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/Comment;->episode:Lcom/uwetrottmann/trakt5/entities/Episode;

    return-void
.end method

.method public constructor <init>(Lcom/uwetrottmann/trakt5/entities/Movie;Ljava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/uwetrottmann/trakt5/entities/Comment;-><init>(Ljava/lang/String;ZZ)V

    .line 3
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/Comment;->movie:Lcom/uwetrottmann/trakt5/entities/Movie;

    return-void
.end method

.method public constructor <init>(Lcom/uwetrottmann/trakt5/entities/Show;Ljava/lang/String;ZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3, p4}, Lcom/uwetrottmann/trakt5/entities/Comment;-><init>(Ljava/lang/String;ZZ)V

    .line 5
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/Comment;->show:Lcom/uwetrottmann/trakt5/entities/Show;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/Comment;->comment:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/Comment;->spoiler:Ljava/lang/Boolean;

    .line 11
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/Comment;->review:Ljava/lang/Boolean;

    return-void
.end method
