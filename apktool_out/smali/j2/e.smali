.class public final Lj2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj2/e;->a:[Ljava/io/File;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getFile(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lj2/e;->a:[Ljava/io/File;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method
