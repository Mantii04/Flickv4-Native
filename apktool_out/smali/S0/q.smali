.class public interface abstract LS0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LS0/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LS0/q;->a:LS0/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract create(Landroidx/media3/common/Format;)LS0/s;
.end method

.method public abstract getCueReplacementBehavior(Landroidx/media3/common/Format;)I
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)Z
.end method
