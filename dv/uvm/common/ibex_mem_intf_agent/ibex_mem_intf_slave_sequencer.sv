// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

//------------------------------------------------------------------------------
// CLASS: ibex_mem_intf_slave_sequencer
//------------------------------------------------------------------------------

class ibex_mem_intf_slave_sequencer extends uvm_sequencer #(ibex_mem_intf_seq_item);

  // TLM port to peek the address phase from the slave monitor
  uvm_tlm_analysis_fifo #(ibex_mem_intf_seq_item) addr_ph_port;

  `uvm_component_utils(ibex_mem_intf_slave_sequencer)

  function new (string name, uvm_component parent);
    super.new(name, parent);
    addr_ph_port = new("addr_ph_port_sequencer", this);
  endfunction : new

endclass : ibex_mem_intf_slave_sequencer
