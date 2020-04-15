#!/bin/bash
# Script that recognizes DNA and RNA sequences.
seq=$1
seq=$(echo $seq | tr a-z A-Z)  # Line to capitalize lower-case inputs.
if [[ $seq =~ ^[ACGTU]+$ ]]; then
  if [[ $seq =~ T ]]; then     # Uses T as hallmark for DNA sequences.
    echo "The sequence is DNA"
  elif [[ $seq =~ U ]]; then   # Uses U as hallmark for RNA sequences.
    echo "The sequence is RNA"
  else			       # When no T nor U is present it cannot distinguish.
    echo "The sequence is either DNA nor RNA"
fi
