.class public final Landroidx/leanback/widget/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/O0;->e:Landroidx/leanback/widget/SearchBar;

    .line 5
    .line 6
    iput p2, p0, Landroidx/leanback/widget/O0;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/O0;->e:Landroidx/leanback/widget/SearchBar;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->D:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget v2, p0, Landroidx/leanback/widget/O0;->b:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v3, v0, Landroidx/leanback/widget/SearchBar;->C:Landroid/media/SoundPool;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const/high16 v9, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 22
    .line 23
    .line 24
    return-void
.end method
