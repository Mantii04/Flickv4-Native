.class public Lflix/com/vision/models/Genre;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public id:I

.field public imageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lflix/com/vision/models/Genre;->id:I

    .line 3
    iput-object p2, p0, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
