class c_1334_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1334_2;
    c_1334_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x1z0z1z0z11x1xx111100xz0xxz1zzzzxzzxxzzxxzzzxzxzxxzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
