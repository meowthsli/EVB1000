--  This spec has been automatically generated from STM32F105xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package STM32.FLASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- ACR_Register --
   ------------------

   subtype ACR_LATENCY_Field is STM32.UInt3;
   subtype ACR_HLFCYA_Field is STM32.Bit;
   subtype ACR_PRFTBE_Field is STM32.Bit;
   subtype ACR_PRFTBS_Field is STM32.Bit;

   --  Flash access control register
   type ACR_Register is record
      --  Latency
      LATENCY       : ACR_LATENCY_Field := 16#0#;
      --  Flash half cycle access enable
      HLFCYA        : ACR_HLFCYA_Field := 16#0#;
      --  Prefetch buffer enable
      PRFTBE        : ACR_PRFTBE_Field := 16#1#;
      --  Read-only. Prefetch buffer status
      PRFTBS        : ACR_PRFTBS_Field := 16#1#;
      --  unspecified
      Reserved_6_31 : STM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      LATENCY       at 0 range 0 .. 2;
      HLFCYA        at 0 range 3 .. 3;
      PRFTBE        at 0 range 4 .. 4;
      PRFTBS        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- SR_Register --
   -----------------

   subtype SR_BSY_Field is STM32.Bit;
   subtype SR_PGERR_Field is STM32.Bit;
   subtype SR_WRPRTERR_Field is STM32.Bit;
   subtype SR_EOP_Field is STM32.Bit;

   --  Status register
   type SR_Register is record
      --  Read-only. Busy
      BSY           : SR_BSY_Field := 16#0#;
      --  unspecified
      Reserved_1_1  : STM32.Bit := 16#0#;
      --  Programming error
      PGERR         : SR_PGERR_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : STM32.Bit := 16#0#;
      --  Write protection error
      WRPRTERR      : SR_WRPRTERR_Field := 16#0#;
      --  End of operation
      EOP           : SR_EOP_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      BSY           at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PGERR         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      WRPRTERR      at 0 range 4 .. 4;
      EOP           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_PG_Field is STM32.Bit;
   subtype CR_PER_Field is STM32.Bit;
   subtype CR_MER_Field is STM32.Bit;
   subtype CR_OPTPG_Field is STM32.Bit;
   subtype CR_OPTER_Field is STM32.Bit;
   subtype CR_STRT_Field is STM32.Bit;
   subtype CR_LOCK_Field is STM32.Bit;
   subtype CR_OPTWRE_Field is STM32.Bit;
   subtype CR_ERRIE_Field is STM32.Bit;
   subtype CR_EOPIE_Field is STM32.Bit;

   --  Control register
   type CR_Register is record
      --  Programming
      PG             : CR_PG_Field := 16#0#;
      --  Page Erase
      PER            : CR_PER_Field := 16#0#;
      --  Mass Erase
      MER            : CR_MER_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : STM32.Bit := 16#0#;
      --  Option byte programming
      OPTPG          : CR_OPTPG_Field := 16#0#;
      --  Option byte erase
      OPTER          : CR_OPTER_Field := 16#0#;
      --  Start
      STRT           : CR_STRT_Field := 16#0#;
      --  Lock
      LOCK           : CR_LOCK_Field := 16#1#;
      --  unspecified
      Reserved_8_8   : STM32.Bit := 16#0#;
      --  Option bytes write enable
      OPTWRE         : CR_OPTWRE_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : CR_ERRIE_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32.Bit := 16#0#;
      --  End of operation interrupt enable
      EOPIE          : CR_EOPIE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OPTPG          at 0 range 4 .. 4;
      OPTER          at 0 range 5 .. 5;
      STRT           at 0 range 6 .. 6;
      LOCK           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      OPTWRE         at 0 range 9 .. 9;
      ERRIE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EOPIE          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   ------------------
   -- OBR_Register --
   ------------------

   subtype OBR_OPTERR_Field is STM32.Bit;
   subtype OBR_RDPRT_Field is STM32.Bit;
   subtype OBR_WDG_SW_Field is STM32.Bit;
   subtype OBR_nRST_STOP_Field is STM32.Bit;
   subtype OBR_nRST_STDBY_Field is STM32.Bit;

   --------------
   -- OBR.Data --
   --------------

   --  OBR_Data array element
   subtype OBR_Data_Element is STM32.Byte;

   --  OBR_Data array
   type OBR_Data_Field_Array is array (0 .. 1) of OBR_Data_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for OBR_Data
   type OBR_Data_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Data as a value
            Val : STM32.Short;
         when True =>
            --  Data as an array
            Arr : OBR_Data_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OBR_Data_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Option byte register
   type OBR_Register is record
      --  Read-only. Option byte error
      OPTERR         : OBR_OPTERR_Field;
      --  Read-only. Read protection
      RDPRT          : OBR_RDPRT_Field;
      --  Read-only. WDG_SW
      WDG_SW         : OBR_WDG_SW_Field;
      --  Read-only. nRST_STOP
      nRST_STOP      : OBR_nRST_STOP_Field;
      --  Read-only. nRST_STDBY
      nRST_STDBY     : OBR_nRST_STDBY_Field;
      --  unspecified
      Reserved_5_9   : STM32.UInt5;
      --  Read-only. Data0
      Data           : OBR_Data_Field;
      --  unspecified
      Reserved_26_31 : STM32.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OBR_Register use record
      OPTERR         at 0 range 0 .. 0;
      RDPRT          at 0 range 1 .. 1;
      WDG_SW         at 0 range 2 .. 2;
      nRST_STOP      at 0 range 3 .. 3;
      nRST_STDBY     at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      Data           at 0 range 10 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH
   type FLASH_Peripheral is record
      --  Flash access control register
      ACR     : ACR_Register;
      --  Flash key register
      KEYR    : STM32.Word;
      --  Flash option key register
      OPTKEYR : STM32.Word;
      --  Status register
      SR      : SR_Register;
      --  Control register
      CR      : CR_Register;
      --  Flash address register
      AR      : STM32.Word;
      --  Option byte register
      OBR     : OBR_Register;
      --  Write protection register
      WRPR    : STM32.Word;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      ACR     at 0 range 0 .. 31;
      KEYR    at 4 range 0 .. 31;
      OPTKEYR at 8 range 0 .. 31;
      SR      at 12 range 0 .. 31;
      CR      at 16 range 0 .. 31;
      AR      at 20 range 0 .. 31;
      OBR     at 28 range 0 .. 31;
      WRPR    at 32 range 0 .. 31;
   end record;

   --  FLASH
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

end STM32.FLASH;
