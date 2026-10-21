.class public final Lz/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz/j;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz/j;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/g;->b:Lz/j;

    .line 5
    .line 6
    iput-object p2, p0, Lz/g;->e:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/g;->b:Lz/j;

    .line 2
    .line 3
    iget-object v1, p0, Lz/g;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object v1, v0, Lz/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method
