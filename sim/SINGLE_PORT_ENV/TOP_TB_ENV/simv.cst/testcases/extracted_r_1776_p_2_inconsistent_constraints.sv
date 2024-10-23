class c_1776_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1776_2;
    c_1776_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x10100xz1zzxzzx0xzz11x1xzzxxx0zxxxxxzzzxxzxxxxxzxzxzzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
