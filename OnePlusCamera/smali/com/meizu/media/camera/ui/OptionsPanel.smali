.class public interface abstract Lcom/meizu/media/camera/ui/OptionsPanel;
.super Ljava/lang/Object;
.source "OptionsPanel.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;,
        Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;
    }
.end annotation


# static fields
.field public static final HIDE_OPTIONS_PANEL:I = 0x0

.field public static final PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_OPTIOINS_PANEL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HasItems"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/ui/OptionsPanel;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanel;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    .line 22
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsDefaultState"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/ui/OptionsPanel;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanel;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/ui/OptionsPanel;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanel;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract closeOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract openOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;I)Lcom/oneplus/base/Handle;
.end method
