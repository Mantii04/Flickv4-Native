.class public abstract LG3/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LG3/z;->b:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LG3/z;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final draw(LF3/a;ILandroid/graphics/Canvas;)V
    .locals 1

    .line 1
    sget-object v0, LG3/z;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2, p3}, LG3/z;->draw(Landroid/graphics/Matrix;LF3/a;ILandroid/graphics/Canvas;)V

    return-void
.end method

.method public abstract draw(Landroid/graphics/Matrix;LF3/a;ILandroid/graphics/Canvas;)V
.end method
