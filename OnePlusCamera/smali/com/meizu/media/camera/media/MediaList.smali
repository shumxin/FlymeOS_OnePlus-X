.class public interface abstract Lcom/meizu/media/camera/media/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/meizu/media/camera/media/MediaInfo;",
        ">;",
        "Lcom/oneplus/base/BaseObject;"
    }
.end annotation


# static fields
.field public static final EVENT_CHANGED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Changed"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/meizu/media/camera/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/media/MediaList;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    return-void
.end method
